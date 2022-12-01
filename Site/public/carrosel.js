var i = 0
function ativarFuncao(){
  var imagem = document.querySelectorAll(".imagem-js")

  for(var indexImg = 0; indexImg < imagem.length; indexImg++){
    imagem[indexImg].classList.remove('mudar')
  }
  
  imagem[i].classList.toggle('mudar')
  i++

  if(i >= imagem.length){
    i = 0
  }
}
ativarFuncao()
setInterval(ativarFuncao, 5000)