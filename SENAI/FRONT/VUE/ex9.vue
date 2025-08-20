<!--Botoes de estado, botoes: ativos, interativos, carregando; mude classes CSS baseado no estado; cores e estilos diferentes para cada estado--><template>
 <template>
  <div class="wrap">
    <h1>Botões com estados</h1>

    <div class="row">
      <!-- Interativo (idle) -->
      <button
        class="btn"
        :class="classeDoEstado(btn1)"
        :aria-busy="btn1 === 'loading'"
        :aria-pressed="btn1 === 'active'"
        :disabled="btn1 === 'loading'"
        @click="ativar('btn1')"
      >
        <span v-if="btn1 !== 'loading'">Salvar</span>
        <span v-else class="spinner" aria-hidden="true"></span>
      </button>

      <!-- Ativo -->
      <button
        class="btn"
        :class="classeDoEstado(btn2)"
        :aria-busy="btn2 === 'loading'"
        :aria-pressed="btn2 === 'active'"
        :disabled="btn2 === 'loading'"
        @click="ativar('btn2')"
      >
        <span v-if="btn2 !== 'loading'">Publicar</span>
        <span v-else class="spinner" aria-hidden="true"></span>
      </button>

      <!-- Carregando -->
      <button
        class="btn"
        :class="classeDoEstado(btn3)"
        :aria-busy="btn3 === 'loading'"
        :aria-pressed="btn3 === 'active'"
        :disabled="btn3 === 'loading'"
        @click="ativar('btn3')"
      >
        <span v-if="btn3 !== 'loading'">Sincronizar</span>
        <span v-else class="spinner" aria-hidden="true"></span>
      </button>
    </div>

    <div class="tools">
      <p><strong>Simular estados:</strong></p>
      <div class="tools-grid">
        <div>
          <label>Salvar</label>
          <select v-model="btn1">
            <option value="idle">idle (interativo)</option>
            <option value="active">active (ativo)</option>
            <option value="loading">loading (carregando)</option>
          </select>
        </div>
        <div>
          <label>Publicar</label>
          <select v-model="btn2">
            <option value="idle">idle (interativo)</option>
            <option value="active">active (ativo)</option>
            <option value="loading">loading (carregando)</option>
          </select>
        </div>
        <div>
          <label>Sincronizar</label>
          <select v-model="btn3">
            <option value="idle">idle (interativo)</option>
            <option value="active">active (ativo)</option>
            <option value="loading">loading (carregando)</option>
          </select>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue"

// estados possíveis: 'idle' | 'active' | 'loading'
const btn1 = ref('idle')
const btn2 = ref('active')
const btn3 = ref('loading')

// Mapeia estado -> classe CSS adicional
const classeDoEstado = (estado) => ({
  'btn--idle': estado === 'idle',
  'btn--active': estado === 'active',
  'btn--loading': estado === 'loading',
})

// Exemplo de interação: ao clicar, vira "loading" por 1.2s e depois "active"
function ativar(qual) {
  if (eval(qual).value === 'loading') return
  eval(qual).value = 'loading'
  setTimeout(() => { eval(qual).value = 'active' }, 1200)
}
</script>

<style scoped>
:root {
  --idle-bg: #2563eb;
  --idle-bg-hover: #1d4ed8;
  --idle-text: #ffffff;

  --active-bg: #16a34a;
  --active-bg-hover: #15803d;
  --active-ring: #bbf7d0;

  --loading-bg: #e5e7eb;
  --loading-text: #6b7280;
}

* { box-sizing: border-box; }
body { margin: 0; background: #f6f7fb; }
.wrap {
  max-width: 760px; margin: 40px auto; padding: 24px;
  background: #fff; border-radius: 16px; box-shadow: 0 12px 28px rgba(0,0,0,.08);
  font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif;
}
h1 { margin: 0 0 16px; font-size: 1.4rem; }
.row { display: flex; gap: 12px; flex-wrap: wrap; }

.btn {
  position: relative;
  display: inline-flex; align-items: center; justify-content: center;
  gap: 8px;
  padding: 10px 16px; border-radius: 12px; border: none; cursor: pointer;
  font-weight: 700; transition: transform .06s ease, box-shadow .2s ease, background .2s ease, color .2s ease;
  outline: none;
}

/* Estado: idle (interativo) */
.btn--idle {
  background: var(--idle-bg); color: var(--idle-text);
  box-shadow: 0 6px 18px rgba(37, 99, 235, .25);
}
.btn--idle:hover { background: var(--idle-bg-hover); transform: translateY(-1px); }
.btn--idle:active { transform: translateY(0); }

/* Estado: active (ativo) */
.btn--active {
  background: var(--active-bg); color: #fff;
  box-shadow: 0 6px 18px rgba(22, 163, 74, .25);
}
.btn--active:hover { background: var(--active-bg-hover); }
.btn--active:focus-visible {
  box-shadow: 0 0 0 4px var(--active-ring);
}

/* Estado: loading (carregando) */
.btn--loading {
  background: var(--loading-bg); color: var(--loading-text);
  cursor: wait;
}
.btn--loading:disabled { opacity: 1; } /* mantém aparência */
.btn--loading .spinner {
  width: 1.1em; height: 1.1em; border-radius: 50%;
  border: 2px solid currentColor; border-right-color: transparent;
  display: inline-block; animation: spin 0.8s linear infinite;
}

@keyframes spin { to { transform: rotate(360deg); } }

.tools { margin-top: 20px; }
.tools-grid {
  display: grid; grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 12px;
}
.tools label { display: block; font-size: .9rem; margin-bottom: 6px; color: #374151; }
.tools select {
  width: 100%; padding: 10px 12px; border-radius: 10px; border: 1px solid #e5e7eb;
  background: #fff; outline: none;
}
.tools select:focus { box-shadow: 0 0 0 4px rgba(37, 99, 235, .18); border-color: #93c5fd; }
</style>
