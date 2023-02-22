<script setup lang="ts">
import HeaderComponent from "@/ui/Header/HeaderComponent.vue";
import HomeComponent from "@/ui/Home/HomeComponent.vue";
</script>

<template>
  <HeaderComponent></HeaderComponent>
  <HomeComponent></HomeComponent>
</template>

<style>
html,
body {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

#app {
  background-color: #282c34;
  min-height: 100vh;
}
</style>
