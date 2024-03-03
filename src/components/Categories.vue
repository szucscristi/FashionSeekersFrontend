<script>
export default {
  data() {
    return {
      categories: [],
    };
  },

  methods: {
    async fetchCategories() {
      try {
        const response = await axios.get("http://fashionseekersbackend.test/api/toatecategoriile");
        console.log(response.data);
        this.categories = response.data;
        console.log(this.categories);
      } catch (error) {
        console.error(error);
      }
    },
  },
};
</script>

<template></template>

<style>
</style>