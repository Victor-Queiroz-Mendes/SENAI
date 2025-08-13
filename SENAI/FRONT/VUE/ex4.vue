<!-- Sistema de Login, Crie uma variavel "usuarioLogado = false"; Mostre 'Bem vindo' se logado, 'faça login se não logado; Adiciome um botão para alterar o estado da variavel'-->
<template>
  <div class="full-black">
    <div v-if="usuarioLogado">
      <p>Bem-vindo, {{ email }}!</p>
      <button @click="logout">Sair</button>
    </div>
    <div v-else>
      <form @submit.prevent="login">
        <label>
          Email:
          <input type="email" v-model="email" required />
        </label>
        <label>
          Senha:
          <input type="password" v-model="senha" required />
        </label>
        <button type="submit">Login</button>
      </form>
      <p v-if="erro" class="erro">{{ erro }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      usuarioLogado: false,
      email: '',
      senha: '',
      erro: ''
    }
  },
  methods: {
    login() {
      if (this.email && this.senha) {
        this.usuarioLogado = true
        this.erro = ''
      } else {
        this.erro = 'Preencha todos os campos.'
      }
    },
    logout() {
      this.usuarioLogado = false
      this.email = ''
      this.senha = ''
      this.erro = ''
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
form {
  display: flex;
  flex-direction: column;
  gap: 16px;
  background: #111;
  padding: 32px;
  border-radius: 8px;
  box-shadow: 0 2px 8px #0008;
}
label {
  font-weight: bold;
  display: flex;
  flex-direction: column;
  color: #fff;
}
input {
  background: #222;
  color: #fff;
  border: 1px solid #444;
  padding: 8px;
  border-radius: 4px;
  margin-top: 4px;
}
button {
  background: #222;
  color: #fff;
  border: 1px solid #444;
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-weight: bold;
  margin-top: 8px;
}
button:hover {
  background: #333;
}
.erro {
  color: #ff4444;
  margin-top: 8px;
  font-weight: bold;
}
</style>
