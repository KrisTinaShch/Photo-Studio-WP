document.addEventListener('scroll', () => {
    const header = document.getElementById('main-header');
    if (window.scrollY > 50) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
  });
  
  const burgerIcon = document.getElementById('burger-icon');
  const navMenu = document.getElementById('nav-menu');
  
  burgerIcon.addEventListener('click', () => {
    burgerIcon.classList.toggle('active');
    navMenu.classList.toggle('open');
  });
  