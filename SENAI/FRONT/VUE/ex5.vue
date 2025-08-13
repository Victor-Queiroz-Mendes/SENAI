<!-- Classificação de Idade, Crie uma variavel 'idade = 20'; Use 'v-else-If', 'v-else' para mostrar; Criança (0-12), Adolecentes (13-17), Adulto (18-59), Idoso (60+)-->
<template>
  <div class="all-black">
    <label>
      Digite sua idade:
      <input type="number" v-model.number="idade" min="0" />
    </label>
    <p v-if="idade >= 0 && idade <= 12">Criança</p>
    <p v-else-if="idade >= 13 && idade <= 17">Adolescente</p>
    <p v-else-if="idade >= 18 && idade <= 59">Adulto</p>
    <p v-else-if="idade >= 60">Idoso</p>
    <p v-else>Idade inválida</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      idade: 20
    }
  }
}
</script>

<style scoped>
.all-black {
  background: #000;
  color: #fff;
  min-height: 100vh; /* ocupa toda a altura da tela */
  padding: 24px;
  border-radius: 0;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
input[type="number"] {
  background: #222;
  color: #fff;
  border: 1px solid #444;
  padding: 6px;
  border-radius: 4px;
  margin-left: 8px;
}
label {
  font-weight: bold;
  margin-bottom: 12px;
  display: block;
}
p {
  margin: 8px 0;
}
</style>
