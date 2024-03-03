<template>
  <div class="register-form">
    <h2>Completati câmpurile de mai jos:</h2>
    <form @submit.prevent="register">
      <div>
        <label for="name">Nume</label>
        <input type="text" id="name" v-model="form.name" required />
      </div>
      <div>
        <label for="email">Email</label>
        <input type="email" id="email" v-model="form.email" required />
      </div>
      <div>
        <label for="password">Parolă</label>
        <input type="password" id="password" v-model="form.password" required />
      </div>
      <div>
        <label for="confirm-password">Confirmă parola</label>
        <input
          type="password"
          id="confirm-password"
          v-model="form.c_password"
          required
        />
      </div>
      <div class="error-message" v-if="errorMessage">{{ errorMessage }}</div>
      <button type="submit">Înregistrează-te</button>
    </form>
    
  </div>
  <router-link to="/asdf" class="back-to-homepage"
        >Înapoi la pagina principală</router-link
      >
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      form: {
        name: "",
        email: "",
        password: "",
        c_password: "",
      },
      errorMessage: "",
    };
  },
  methods: {
    register() {
      axios
        .post("http://fashionseekersbackend.test/register", this.form)
        .then((response) => {
          const { success } = response.data;
        })
        .catch((error) => {
          const { error: validationErrors } = error.response.data;
          this.errorMessage = validationErrors;
        });
    },
  },
};
</script>

<style>
</style>
