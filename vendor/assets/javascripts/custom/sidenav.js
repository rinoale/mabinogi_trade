function openNav() {
  document.getElementById('sideMenu').style.width = '250px';
}

function closeNav() {
  document.getElementById('sideMenu').style.width = '0';
}

function openNavPush() {
  document.getElementById('sideMenu').style.width = '250px';
  document.getElementById('main').style.marginLeft = '250px';
}

function closeNavPush() {
  document.getElementById('sideMenu').style.width = '0';
  document.getElementById('main').style.marginLeft = '0';
}
