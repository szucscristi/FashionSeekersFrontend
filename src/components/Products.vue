<template>
  <div>
    <nav class="navbar">
      <div class="navbar-brand">
        <button class="home-button" @click="redirectToHomepage">Acasă</button>
      </div>
      <div class="navbar-menu">
        <button
          v-for="category in categories"
          :key="category.id"
          class="navbar-item"
          @click="ChangeCategory(category.id)"
        >
          {{ category.denumire }}
        </button>
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
          Inregistrează-te
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
      <div class="row">
        <div class="col-md-4" v-for="product in products" :key="product.id">
          <div class="card">
            <div class="card-body">
              <img
                :src="getImageUrl(product.imagine)"
                alt="Product Image"
                class="product-image"
              />
              <h5 class="card-title">{{ product.denumire }}</h5>
              <p class="card-text">{{ product.descriere }}</p>
              <p class="card-text">Preț: {{ product.pret }} lei</p>
              <button class="storage-button" @click="saveData(product)">
                Adaugă in coș
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      products: [],
      categories: [],
      categoryId: 1,
      categoryName: localStorage.getItem("selectie"),
      userName: localStorage.getItem("username"),
      showAdditionalButtons: false,
      showCategories: false,
    };
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
    isLoggedIn() {
      const token = localStorage.getItem("token");
      if (token == "") return false;
      else return true;
    },
    redirectToHomepage() {
      this.$router.push({ path: `/` });
    },

    ChangeCategory(id) {
      if (id === 0) {
        this.categoryId = 0;
        this.categoryName = "defaultCategoryName";
      } else {
        this.categoryId = id;
        this.categoryName = localStorage.getItem("selectie");
      }
      this.fetchProducts();
    },

    async fetchProducts() {
      console.log("Category Name:", this.categoryName);
      console.log("Category ID:", this.categoryId);

      try {
        const response = await axios.get(
          `http://fashionseekersbackend.test/api/${this.categoryName}/${this.categoryId}`
        );
        this.products = response.data;
      } catch (error) {
        console.error(error);
      }
    },

    async fetchCategories() {
      try {
        const response = await axios.get(
          "http://fashionseekersbackend.test/api/toatecategoriile"
        );
        this.categories = response.data;
      } catch (error) {
        console.error(error);
      }
    },

    getImageUrl(image) {
      const baseUrl = "http://fashionseekersbackend.test/img/";
      return `${baseUrl}${image}`;
    },

    saveData(product) {
      const data = {
        Denumire: product.denumire,
        Descriere: product.descriere,
        Pret: product.pret,
        Imagine: product.imagine,
      };
      const storedData = localStorage.getItem("data");
      let newData = [];
      if (storedData) {
        newData = JSON.parse(storedData);
      }
      newData.push(data);
      localStorage.setItem("data", JSON.stringify(newData));
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
  },

  mounted() {
    this.fetchCategories();
    this.fetchProducts();
  },
};
</script>

<style>
</style>
