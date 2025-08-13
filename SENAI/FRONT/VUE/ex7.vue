<!-- Catalogo de produtos: Crie uma array de objetos com produtos (nome, preço , categoria); Renderize cards mostrando todas as informações; Adicione formatação de preço (R$10,00).-->
 <template>
  <div class="full-black">
    <h2>Catálogo de Produtos</h2>
    <div class="catalogo">
      <div class="card" v-for="(produto, i) in produtos" :key="i">
        <h3>{{ produto.nome }}</h3>
        <p><strong>Preço:</strong> {{ formatarPreco(produto.preco) }}</p>
        <p><strong>Categoria:</strong> {{ produto.categoria }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      produtos: [
        { nome: 'Camiseta', preco: 50, categoria: 'Vestuário' },
        { nome: 'Notebook', preco: 3500, categoria: 'Eletrônicos' },
        { nome: 'Cafeteira', preco: 250, categoria: 'Eletrodomésticos' }
      ]
    }
  },
  methods: {
    formatarPreco(valor) {
      return valor.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
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
  padding: 32px 0;
}
.catalogo {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
  justify-content: center;
}
.card {
  border: 1px solid #222;
  padding: 12px;
  border-radius: 8px;
  width: 180px;
  text-align: center;
  background: #111;
  box-shadow: 2px 2px 6px rgba(0,0,0,0.4);
}
.card h3 {
  margin-bottom: 8px;
  color: #fff;
}
.card p {
  color: #ccc;
}
</style>
