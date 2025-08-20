<!--Crie novos exemplos utilizados os demais funçoes; keydown-quando o teclado é pressionada; keypress- quando a tecla esta sendo pressionada; use a criatividade;-->

<template>
  <div class="piano">
    <h1>🎹 Piano Virtual</h1>
    <p>Pressione A, S, D ou F para tocar notas</p>

    <div class="notas">
      <div :class="['nota', { ativa: notaAtual === 'A' }]">A</div>
      <div :class="['nota', { ativa: notaAtual === 'S' }]">S</div>
      <div :class="['nota', { ativa: notaAtual === 'D' }]">D</div>
      <div :class="['nota', { ativa: notaAtual === 'F' }]">F</div>
    </div>

    <p v-if="notaAtual">🎵 Tocando: {{ notaAtual }}</p>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from "vue"

const notaAtual = ref("")

function tocarNota(e) {
  const tecla = e.key.toUpperCase()
  if (["A", "S", "D", "F"].includes(tecla)) {
    notaAtual.value = tecla
    setTimeout(() => {
      notaAtual.value = ""
    }, 500)
  }
}

onMounted(() => {
  window.addEventListener("keydown", tocarNota)
})
onUnmounted(() => {
  window.removeEventListener("keydown", tocarNota)
})
</script>

<style scoped>
.piano {
  text-align: center;
  font-family: Arial, sans-serif;
}
.notas {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}
.nota {
  width: 80px;
  height: 120px;
  margin: 10px;
  background: white;
  border: 2px solid black;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  transition: 0.2s;
}
.ativa {
  background: gold;
  transform: scale(1.1);
}
</style>
