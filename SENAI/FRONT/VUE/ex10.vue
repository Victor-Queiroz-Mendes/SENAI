<!--Contador avançado: Botoes: ativos, inativos, carregando; mude classe CSS baseado no estado; cores e estilos diferentes para cada estado-->

<template>
  <div class="app">
    <h1>🔢 Contador Avançado</h1>
    <p class="contador">Valor: {{ count }}</p>

    <!-- Botão Ativo -->
    <button
      :class="['btn', 'ativo', { desabilitado: estado !== 'ativo' }]"
      :disabled="estado !== 'ativo'"
      @click="incrementar"
    >
      Incrementar
    </button>

    <!-- Botão Inativo -->
    <button
      :class="['btn', 'inativo', { desabilitado: estado !== 'inativo' }]"
      :disabled="estado !== 'inativo'"
      @click="resetar"
    >
      Resetar
    </button>

    <!-- Botão Carregando -->
    <button
      :class="['btn', 'carregando', { desabilitado: estado !== 'carregando' }]"
      :disabled="estado !== 'carregando'"
    >
      <span v-if="estado === 'carregando'">⏳ Carregando...</span>
      <span v-else>Carregando</span>
    </button>

    <!-- Selecionar Estado -->
    <div class="estados">
      <h3>Alterar Estado:</h3>
      <button class="selector" @click="estado = 'ativo'">Ativo</button>
      <button class="selector" @click="estado = 'inativo'">Inativo</button>
      <button class="selector" @click="estado = 'carregando'">Carregando</button>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue"

const count = ref(0)
const estado = ref("ativo")

function incrementar() {
  if (estado.value === "ativo") {
    count.value++
  }
}

function resetar() {
  if (estado.value === "inativo") {
    count.value = 0
  }
}
</script>

<style scoped>
.app {
  text-align: center;
  font-family: Arial, sans-serif;
  padding: 20px;
}

.contador {
  font-size: 1.5rem;
  margin: 15px 0;
}

.btn {
  padding: 10px 20px;
  margin: 10px;
  font-size: 1rem;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: all 0.3s ease;
  color: white;
}

/* Estados de estilo */
.ativo {
  background: #28a745;
}
.inativo {
  background: #dc3545;
}
.carregando {
  background: #ffc107;
  color: black;
}

/* Estado desabilitado */
.desabilitado {
  opacity: 0.5;
  cursor: not-allowed;
}

/* Botões de seleção */
.estados {
  margin-top: 20px;
}
.selector {
  margin: 5px;
  padding: 8px 16px;
  border: 1px solid #ccc;
  background: #f4f4f4;
  border-radius: 5px;
  cursor: pointer;
}
.selector:hover {
  background: #ddd;
}
</style>
