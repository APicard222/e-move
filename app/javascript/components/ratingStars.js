const getRatingStars = () => {
  const stars = document.querySelector('.review-stars')
  const rating = document.querySelector('#review-form')

  if (stars) {
    Array.from(stars.children).forEach(star => {
      star.addEventListener('click', (evt) => {
        rating[2].value = parseInt(evt.currentTarget.dataset.rating, 10)

        for (let idx = 0; idx < parseInt(evt.currentTarget.dataset.rating, 10); idx++) {
          stars.children[idx].style.color = 'yellow'
        }
      })
    })
  }
}

export { getRatingStars }
