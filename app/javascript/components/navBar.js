const showNavbar = () => {
  const navbar = document.querySelector('.navbar')
  const banner = document.querySelector('.banner')

  if (banner) {
    navbar.style.display = 'none'
  }
  else {
    navbar.style.display = 'flex'
  }
}

export { showNavbar }
