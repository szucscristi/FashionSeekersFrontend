<template>
  <div class="login-form">
    <h2>Completati câmpurile de mai jos:</h2>
    <div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" v-model="email" required />
      </div>
      <div class="form-group">
        <label for="password">Parolă</label>
        <input type="password" id="password" v-model="password" required />
      </div>
      <button type="submit" @click="login">Loghează-te</button>
    </div>
  </div>
  <router-link to="/asdf" class="back-to-homepage"
    >Înapoi la pagina principală</router-link
  >
</template>

<script>
import axios from "axios";
import Swal from "sweetalert2";

export default {
  data() {
    return {
      email: "",
      password: "",
      message: "",
    };
  },
  methods: {
    showErrorMessage(message) {
      Swal.fire({
        icon: "error",
        title: "Eroare",
        text: message,
      });
    },

    showSuccessMessage(name) {
      Swal.fire({
        icon: "success",
        title: "Logarea a avut loc cu succes!",
        text: `Bun venit, ${name}!`,
      });
    },

    async login() {
      const loginData = {
        email: this.email,
        password: this.password,
      };

      try {
        const response = await axios.post(
          "http://fashionseekersbackend.test/login",
          { login: loginData }
        );

        if (response.data.token) {
          this.message = "Bun venit " + response.data.name + "!";
          localStorage.setItem("token", response.data.token);
          localStorage.getItem("username");
          localStorage.setItem("username", response.data.name);
          localStorage.getItem("userId");
          localStorage.setItem("userId", response.data.id);
          this.showSuccessMessage(response.data.name);
          this.$router.push({ path: "/asdf" });
        } else {
          this.message = "Email sau parola incorecta!";
          this.showErrorMessage(this.message);
        }
      } catch (error) {
        console.error(error);
        this.message = "Email sau parola incorecta!";
        this.showErrorMessage(this.message);
      }
    },
  },
};
</script>