document.getElementById("botaoAdicionar").addEventListener("click", function() {
    var conteudoHTML = `
        <div style="border: 1px solid #000; padding: 10px; margin-top: 10px;">
            <h2>Título do Card</h2>
            <p>Este é o texto do card. Você pode adicionar mais conteúdo aqui.</p>
            <ul>
                <li>Item 1</li>
                <li>Item 2</li>
                <li>Item 3</li>
            </ul>
        </div>
    `;
    document.getElementById("minhaDiv").innerHTML = conteudoHTML;
});