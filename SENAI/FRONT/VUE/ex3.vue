<!--Use 'New Date()' para criar uma variavel de data; Exiba a data formatada usando metodos JS dentro da interpolação; ex:'new Date().getFullYear()'--><!-- index.html -->
<div id="app">
  <p>Ano: {{ data.getFullYear() }}</p>
  <p>Mês: {{ data.getMonth() + 1 }}</p> <!-- +1 porque janeiro = 0 -->
  <p>Dia: {{ data.getDate() }}</p>
  <p>Data completa: {{ data.toLocaleDateString() }}</p>
</div>

<script src="https://unpkg.com/vue@2"></script>
<script>
  new Vue({
    el: '#app',
    data: {
      data: new Date()
    }
  });
</script>
