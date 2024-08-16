document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("voltar").addEventListener("click", function() {
        window.history.back();
}
)});


// VALOR TOTAL DOS ITENS
 

 const precoPaoCaseiro = 3.00;
 const precoCucaDoceDeLeite = 17.00;
 const precoQueijoColonial = 26.00;


 document.addEventListener('DOMContentLoaded', function() {
  
    const adicionarPaoCaseiro = document.getElementById('adicionar-pao-caseiro');
    const adicionarCucaDoceDeLeite = document.getElementById('adicionar-cuca-doce-de-leite');
    const adicionarQueijoColonial = document.getElementById('adicionar-queijo-colonial');

    
   function atualizarTotal(preco) {
    
     let valorTotal = parseFloat(localStorage.getItem('valorTotal')) || 0;
     valorTotal += preco;
     localStorage.setItem('valorTotal', valorTotal.toFixed(2));
   }

   adicionarPaoCaseiro.addEventListener('click', function() {
     atualizarTotal(precoPaoCaseiro);
   });

   adicionarCucaDoceDeLeite.addEventListener('click', function() {
     atualizarTotal(precoCucaDoceDeLeite);
   });

   adicionarQueijoColonial.addEventListener('click', function() {
     atualizarTotal(precoQueijoColonial);
   });
 });

  document.addEventListener('DOMContentLoaded', function() {
     let valorTotal = parseFloat(localStorage.getItem('valorTotal')) || 0;
     document.getElementById('valor-total').innerHTML = `Total: R$ ${valorTotal.toFixed(2)}`;
   });


document.getElementById('zerar').addEventListener('click', function() {
    
    localStorage.setItem('valorTotal', '0.00');
    document.getElementById('valor-total').innerHTML = 'Total: R$ 0.00';
});




