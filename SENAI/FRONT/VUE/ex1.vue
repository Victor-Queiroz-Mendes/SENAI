<!-- Crie variaveis para nome, idade e profissao; exiba uma frase: meu nome é ..., tenho (idade) anos e sou (profissao) -->
<div id="app">
  <p>Meu nome é {{ nome }}, tenho {{ idade }} anos e sou {{ profissao }}.</p>
</div>

<script src="https://unpkg.com/vue@2"></script>
<script>
  new Vue({
    el: '#app',
    data: {
      nome: 'Victor Hugo',
      idade: 17,
      profissao: 'Desenvolvedor'
    }
  });
</script>
