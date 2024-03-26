
// url da index
const GOBACK_PATH = '/index.html'

// id dos elementos usados na pagina
const GOBACK_BUTTON_ID = '#go-back'
const HEART_ID = '#heart'
const FAVORITE_BUTTON = '#favorite-item'

// elementos do HTML
const goBack = document.querySelector(GOBACK_BUTTON_ID)
const heart = document.querySelector(HEART_ID)
const favoriteItem = document.querySelector(FAVORITE_BUTTON)

function favoritaCategoria() {
  const tipoAtual = heart.getAttribute('type')

  if(tipoAtual === 'regular') {
    heart.setAttribute('type', 'solid')
    heart.setAttribute('color', '#fc2803')
    return;
  }
  heart.setAttribute('type', 'regular')
  heart.setAttribute('color', '#009092')

}

function voltarPraIndex() {
  window.location.href = GOBACK_PATH
}

goBack.addEventListener('click', voltarPraIndex)
favoriteItem.addEventListener('click', favoritaCategoria)
