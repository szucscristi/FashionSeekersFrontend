<script setup>
import { ref } from "vue";
import { onMounted, computed } from "vue";
import axios from "axios";
import Swal from "sweetalert2";

const nume = ref("");
const prenume = ref("");
const email = ref("");
const telefon = ref("");
const adresa = ref("");

onMounted(() => {
  console.log("Component mounted.");
});
async function showSuccessMessage() {
      Swal.fire({
        icon: "success",
        title: "Comanda a fost trimisa cu succes!",
      });
    }
async function formSubmit() {
  try {
    await axios.post("http://fashionseekersbackend.test/forms", {
      Nume: nume.value,
      Prenume: prenume.value,
      Email: email.value,
      Telefon: telefon.value,
      Adresa: adresa.value,
    });
    
    this.showSuccessMessage(storedData.value);
    sendEmail(storedData.value);

     const timestamp = new Date().toLocaleString(); 

    const orderHistory = JSON.parse(localStorage.getItem("orderHistory") || "[]");
    const orderWithTimestamp = { timestamp, orderItems: storedData.value }; 
    orderHistory.push(orderWithTimestamp); 
    localStorage.setItem("orderHistory", JSON.stringify(orderHistory));
    emptyCart();
    
  } catch (error) {
    console.error(error);
  }
}
async function emptyCart()
{
  localStorage.removeItem("data");
}
async function sendEmail(cartItems) {
  try {
    const response = await axios.post("http://fashionseekersbackend.test/send-mail", {
      cartItems,
    });
    console.log("Email sent successfully");
  } catch (error) {
    console.error("Error sending email:", error);
  }
}

const storedData = computed(() => {
  const storedData = localStorage.getItem("data");
  if (storedData) {
    return JSON.parse(storedData);
  }
  return [];
});
</script>

<template>
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-md-8 mt-3">
        <div class="card">
          <div class="card-header">Formular de livrare</div>

          <div class="card-body">
            <div>
              <strong>Nume:</strong>
              <input type="text" class="form-control" v-model="nume" />
              <br />
              <strong>Prenume:</strong>
              <input type="text" class="form-control" v-model="prenume" />
              <br />
              <strong>Email:</strong>
              <input type="text" class="form-control" v-model="email" />
              <br />
              <strong>Număr telefon:</strong>
              <input type="text" class="form-control" v-model="telefon" />
              <br />
              <strong>Adresă livrare:</strong>
              <input type="text" class="form-control" v-model="adresa" />
              <br />

              <div class="text-center d-flex justify-content-center gap-3">
                <router-link to="/asdf" class="btn btn-success btn-lg btn-sm" @click="formSubmit()">
                  Plasează comanda
                </router-link>
                <router-link to="/coscumparaturi" class="btn btn-secondary btn-lg btn-sm">
                  Înapoi la coșul de cumpărături
                </router-link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>

</style>


