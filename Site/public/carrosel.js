var i = 0
function ativarFuncao(){
  var imagem = document.querySelectorAll(".img-js")

  for(var indexImg = 0; indexImg < imagem.length; indexImg++){
    imagem[indexImg].classList.remove('ativo')
  }
  
  imagem[i].classList.toggle('ativo')
  i++

  if(i >= imagem.length){
    i = 0
  }
}
ativarFuncao()
setInterval(ativarFuncao, 5000)