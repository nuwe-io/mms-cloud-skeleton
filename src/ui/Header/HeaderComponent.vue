<script setup lang="ts"></script>

<template>
  <header class="header">
    <h3>Welcome to the Nuwe's vite vue skeleton</h3>
  </header>
</template>

<style>
.header {
  align-items: center;
  border-bottom: 1px solid #4ffab6;
  color: white;
  display: flex;
  flex-direction: column;
  font-size: calc(1rem + 2vmin);
  justify-content: center;
  margin: auto;
  max-width: 90vw;
  text-align: center;
}

@media (min-width: 1200px) {
  .header {
    max-width: 60vw;
  }
}
</style>
