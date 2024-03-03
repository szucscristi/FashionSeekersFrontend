<template>
  <div v-if="isLoggedIn()" class="user">
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
    <div class="user-account">
      <h1>Bine ai venit, {{ userName }}</h1>
      <div class="order-history">
        <h2>Istoricul comenzilor:</h2>
        <ul class="order-list">
          <li
            v-for="order in orderHistory"
            :key="order.timestamp"
            class="order-item"
          >
            <div class="order-details">
              <strong>{{ order.timestamp }}</strong>
              <ul
                v-if="order.orderItems && order.orderItems.length"
                class="item-list"
              >
                <li
                  v-for="item in order.orderItems"
                  :key="item.Denumire"
                  class="item"
                >
                  {{ item.Denumire }} - {{ item.Pret }} lei
                </li>
              </ul>
              <p v-else>Nici un produs in această comandă.</p>
              <strong
                v-if="order.orderItems && order.orderItems.length"
                class="total-price"
              >
                Preț total: {{ calculateTotalPrice(order.orderItems) }} lei
              </strong>
            </div>
          </li>
        </ul>
      </div>
      <button @click="deleteOrderHistory" class="btn btn-danger">
        Șterge istoricul comenzilor
      </button>
    </div>
  </div>
  <div v-else>Nu ești logat!</div>
</template>

<script>
import axios from "axios";
const token = localStorage.getItem("token");

export default {
  data() {
    return {
      data: [],
      userName: localStorage.getItem("username"),
      orderHistory: JSON.parse(localStorage.getItem("orderHistory") || "[]"),
      showAdditionalButtons: false,
    };
  },
  computed: {
    cartItems() {
      return this.orderHistory.flat();
    },
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
    calculateTotalPrice(orderItems) {
      return orderItems.reduce((total, item) => total + item.Pret, 0);
    },
    deleteOrderHistory() {
      localStorage.removeItem("orderHistory");
      this.orderHistory = [];
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

    storedData() {
      const storedData = localStorage.getItem("data");
      if (storedData) {
        return JSON.parse(storedData);
      }
      return [];
    },
  },
};
</script>

<style>
</style>