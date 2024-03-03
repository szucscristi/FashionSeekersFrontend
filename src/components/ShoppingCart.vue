<template>
  <div class="shopping-cart">
    <nav class="navbar">
      <div class="navbar-brand">
        <router-link to="/" class="home-button">Acasă</router-link>
      </div>
      <div class="navbar-menu">
        <router-link to="/asdf" class="navbar-item">Tricouri</router-link>
        <router-link to="/asdf" class="navbar-item">Pantaloni</router-link>
        <router-link to="/asdf" class="navbar-item">Cămăși</router-link>
        <router-link to="/asdf" class="navbar-item">Hanorace</router-link>
        <router-link to="/asdf" class="navbar-item"
          >Jachete & Paltoane</router-link
        >
        <router-link to="/coscumparaturi" class="navbar-item cart-button">
          <span class="cart-icon"><i class="fas fa-shopping-cart"></i></span>
          <span class="cart-count">{{ storedData.length }}</span>
        </router-link>
      </div>
      <div class="navbar-buttons">
        <div class="user-menu-container">
          <button
            v-if="isLoggedIn()"
            class="userButton"
            @click="toggleAdditionalButtons"
          >
            <span class="user-icon">
              <i class="fas fa-user"></i>
            </span>
            {{ userName }}
          </button>

          <div v-if="showAdditionalButtons" class="additional-buttons">
            <button
              class="order-history-button"
              @click="redirectToOrderHistory"
            >
              Istoricul comenzilor
            </button>
            <button class="crud" @click="redirectToCRUD">CRUD</button>
            <button
              v-if="isLoggedIn()"
              class="navbar-item logout-button"
              @click="logout"
            >
              <span class="logout-icon">
                <i class="fas fa-sign-out-alt"></i>
              </span>
              Deloghează-te
            </button>
          </div>
        </div>
        <router-link
          v-if="!isLoggedIn()"
          to="/register"
          class="navbar-item register-button"
        >
          <span class="register-icon">
            <i class="fas fa-user-plus"></i>
          </span>
          Înregistrează-te
        </router-link>
        <router-link
          v-if="!isLoggedIn()"
          to="/login"
          class="navbar-item login-button"
        >
          <span class="login-icon">
            <i class="fas fa-sign-in-alt"></i>
          </span>
          Loghează-te
        </router-link>
      </div>
    </nav>
    <div class="container">
      <div class="row justify-content-center">
        <div
          class="col-md-4"
          v-for="product in storedData"
          :key="product.Imagine"
        >
          <div class="card">
            <div class="card-body">
              <img
                :src="getImageUrl(product.Imagine)"
                alt="Product Image"
                class="product-image"
              />
              <h6 class="card-title">{{ product.Denumire }}</h6>
              <p class="card-text">{{ product.Descriere }}</p>
              <p class="card-text">Preț: {{ product.Pret }} lei</p>
              <button class="delete-button" @click="deleteProduct(product)">
                Șterge produsul din coș
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="empty-cart-message" v-if="storedData.length === 0">
        Coșul de cumparaturi este gol.
      </div>
    </div>
    <div class="clear-cart" v-if="storedData.length > 0">
      <button class="clear-cart-button" @click="clearCart">
        Șterge toate produsele din coș
      </button>
      <template v-if="isLoggedIn()">
        <router-link to="/forms" class="send-order-button"
          >Confirmare comandă</router-link
        >
      </template>
      <template v-else>
        <router-link to="/login" class="login-from-shoppingcart"
          >Loghează-te pentru a continua</router-link
        >
      </template>
    </div>
    <div class="total-price" v-if="storedData.length > 0">
      Prețul total: {{ totalPrice }} lei
    </div>
  </div>
</template>

<script>
import axios from "axios";
const token = localStorage.getItem("token");

export default {
  data() {
    return {
      data: [],
      userName: localStorage.getItem("username"),
      showAdditionalButtons: false,
    };
  },
  headers: {
    Authorization: `Bearer ${token}`,
  },
  methods: {
    toggleAdditionalButtons() {
      this.showAdditionalButtons = !this.showAdditionalButtons;
    },
    redirectToOrderHistory() {
      this.$router.push("/user-history");
    },
    redirectToCRUD() {
      this.$router.push("/crud");
    },
    isLoggedIn() {
      const token = localStorage.getItem("token");
      if (token == "") return false;
      else return true;
    },
    async logout() {
      const token = localStorage.getItem("token");
      console.log(token);
      if (token == "") {
        console.error("User not logged in");
        return;
      }
      try {
        const response = await axios.post(
          "http://fashionseekersbackend.test/logout",
          {},
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        );

        if (response.status === 200) {
          console.log("Logout successful");

          localStorage.setItem("token", "");
          this.$router.push({ path: "/login" });
        } else {
          console.error("Logout failed");
        }
      } catch (error) {
        console.error(error);
      }
    },
    getImageUrl(image) {
      const baseUrl = "http://fashionseekersbackend.test/img/";
      return `${baseUrl}${image}`;
    },
    saveData(product) {
      this.data.push({
        Denumire: product.denumire,
        Descriere: product.descriere,
        Pret: product.pret,
        Imagine: product.imagine,
      });
      localStorage.setItem("data", JSON.stringify(this.data));
    },
    deleteProduct(product) {
      const productIndex = this.storedData.findIndex(
        (p) => p.Imagine === product.Imagine
      );
      if (productIndex !== -1) {
        this.storedData.splice(productIndex, 1);
        localStorage.setItem("data", JSON.stringify(this.storedData));
      }
    },
    clearCart() {
      this.data = [];
      localStorage.removeItem("data");
    },
  },
  computed: {
    storedData() {
      const storedData = localStorage.getItem("data");
      if (storedData) {
        return JSON.parse(storedData);
      }
      return [];
    },
    totalPrice() {
      return this.storedData.reduce(
        (total, product) => total + product.Pret,
        0
      );
    },
  },
};
</script>

<style>
</style>