<!-- Lista de compras: Crie um array 'compras = {leite, frutas, ovos, pao}'; Renderize uma lista com cada item; Adicione numeração nos itens e remova o ponto da lista pelo css--><template>
<template>
  <div class="full-black">
    <h3>Lista de compras</h3>
    <ul class="lista">
      <li v-for="(item, i) in compras" :key="i">{{ item }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      compras: ['leite', 'frutas', 'ovos', 'pao']
    }
  }
}
</script>

<style scoped>
.full-black {
  background: #000;
  color: #fff;
  min-height: 100vh;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.lista {
  list-style: none;
  padding-left: 0;
  counter-reset: item;
}
.lista li {
  counter-increment: item;
  margin: 4px 0;
}
.lista li::before {
  content: counter(item) " ";
  font-weight: 600;
  margin-right: 8px;
}
</style>
