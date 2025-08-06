<!--Crie variaveis 'a = 15' e 'b = 25'; exiba: soma, subtração, multiplicaçao e divisão usando intepolaçao--><!-- index.html -->
<div id="app">
  <p>Soma: {{ a + b }}</p>
  <p>Subtração: {{ a - b }}</p>
  <p>Multiplicação: {{ a * b }}</p>
  <p>Divisão: {{ a / b }}</p>
</div>

<script src="https://unpkg.com/vue@2"></script>
<script>
  new Vue({
    el: '#app',
    data: {
      a: 15,
      b: 25
    }
  });
</script>
