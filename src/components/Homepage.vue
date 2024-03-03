<template>
  <div class="homepage">
    <div class="title">Imbrăcăminte pentru:</div>
    <div class="images-container">
      <img src="/src/assets/images/SectiuneFemei.jpg" @click="redirectToClothes('Femei', 'asdf')" alt="Femei" />
      <img src="/src/assets/images/SectiuneBarbati.jpg" @click="redirectToClothes('Barbati', 'asdf')" alt="Barbati" />
      <img src="/src/assets/images/SectiuneCopii.jpg" @click="redirectToClothes('Copii', 'asdf')" alt="Copii" />
      <img src="/src/assets/images/SectiuneBebelusi.jpg" @click="redirectToClothes('Bebelusi', 'asdf')" alt="Bebelusi" />
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    redirectToClothes(selectie, page) {
      localStorage.setItem("selectie", selectie);
      this.$router.push({ path: `/${page}`, props: { selectie: selectie } });
    },
  },
};
</script>

<style scoped>
.title {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
  text-align: center;
  font-style:italic;
}

.homepage {
  display: flex;
  flex-direction: column; 
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.images-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
}

img {
  width: 100%;
  max-width: 200px; 
  cursor: pointer;
  border-radius: 5px;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

img:hover {
  transform: scale(1.1); 
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
}

@media (max-width: 768px) {
  .title {
    font-size: 20px;
  }
  
  img {
    max-width: 150px;
  }
}
</style>
