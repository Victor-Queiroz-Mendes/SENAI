<template>
  <div class="calculator">
    <h2>Calculadora de IMC</h2>
    <input type="number" v-model.number="peso" placeholder="Peso (kg)" />
    <input type="number" v-model.number="altura" placeholder="Altura (m)" step="0.01" />
    <button @click="calcularIMC">Calcular IMC</button>

    <div v-if="imc">
      <p>Seu IMC: {{ imc.toFixed(2) }}</p>
      <p>Categoria: {{ categoria }}</p>
    </div>
  </div>
</template>

<script>
import { ref, computed } from 'vue';

export default {
  name: 'ImcCalculator',
  setup() {
    const peso = ref(null);
    const altura = ref(null);
    const imc = ref(null);

    const categoria = computed(() => {
      if (!imc.value) return '';
      if (imc.value < 18.5) return 'Abaixo do peso';
      if (imc.value < 25) return 'Peso normal';
      if (imc.value < 30) return 'Sobrepeso';
      return 'Obesidade';
    });

    const calcularIMC = () => {
      if (peso.value && altura.value) {
        imc.value = peso.value / (altura.value ** 2);
      } else {
        alert('Preencha peso e altura corretamente!');
      }
    };

    return { peso, altura, imc, categoria, calcularIMC };
  }
};
</script>

<style scoped>
.calculator {
  max-width: 300px;
  margin: 20px auto;
  padding: 20px;
  border-radius: 10px;
  background-color: #f9f9f9;
  text-align: center;
}
input {
  width: 80%;
  margin: 5px 0;
  padding: 8px;
  border-radius: 5px;
  border: 1px solid #ccc;
}
button {
  padding: 10px 20px;
  margin-top: 10px;
  border: none;
  border-radius: 5px;
  background-color: #007BFF;
  color: white;
  cursor: pointer;
}
button:hover {
  background-color: #0056b3;
}
</style>
