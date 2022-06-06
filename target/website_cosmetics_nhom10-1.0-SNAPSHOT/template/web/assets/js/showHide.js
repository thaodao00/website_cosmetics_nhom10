// const $$ = document.querySelectorAll.bind(document)
// const $ = document.querySelector.bind(document)

//modal show hide search
const iconSearch = document.querySelector('.search-link')
const modal =  document.querySelector('.modal')
const iconClose = document.querySelector('.modal__icon-close')
const inputSearch = document.querySelector('.modal__input')
const searchHistory = document.querySelector('.modal__history')

function showSearch () {
    modal.classList.add('modal__open')
}
function hideSearch () {
    modal.classList.remove('modal__open')
}

iconSearch.addEventListener('click', showSearch)
iconClose.addEventListener('click', hideSearch)
modal.addEventListener('click',hideSearch)
inputSearch.addEventListener('click',function(event){
    // ngừng việc nổi bọt
    event.stopPropagation()
})
searchHistory.addEventListener('click',function(event){
    // ngừng việc nổi bọt
    event.stopPropagation()
})

//Modal show hide account
const modalAccount = document.querySelector('.modal-account')
const iconUsers = document.querySelectorAll('.login-link')
const authForms = document.querySelectorAll('.auth-form')
const registerForm = document.querySelector('.register-form')
const  loginForm = document.querySelector('.login-form')
const loginFormBtn = document.querySelector('.login-from__btn')
const registerFormBtn = document.querySelector('.register-from__btn')
const backBtn= document.querySelectorAll('.auth-form__controls-back')
const navMobile = document.querySelector('.nav-mobile')
const navBtnMobile = document.querySelector('.nav-link')
const forgotBtn = document.querySelector('.auth-form__help-link')
const forgotForm = document.querySelector('.forgot-pass-form')



function showAccount(){
    modalAccount.classList.add('modal-account__open')
}
function hideAccount(){
    modalAccount.classList.remove('modal-account__open')
}
for(const iconUser of iconUsers) {
    iconUser.addEventListener('click', showAccount)
}
modalAccount.addEventListener('click',hideAccount)

loginFormBtn.addEventListener('click', function (){
    loginForm.style.display="block"
    registerForm.style.display="none"

})
registerFormBtn.addEventListener('click', function (){
    registerForm.style.display="block"
    loginForm.style.display="none"

})
forgotBtn.addEventListener('click', function (){
    loginForm.style.display="none"
    forgotForm.style.display="block"
})

for(const btn of backBtn){
    btn.addEventListener('click', hideAccount)
}

for(const authForm of authForms) {
    authForm.addEventListener('click', function (e) {
        e.stopPropagation()
    })
}


const close = document.querySelector('.close-js');
const overlay = document.querySelector('.popup-overlay');
const popup = document.querySelector('.popup');

popup.onclick = function (e) {
    e.stopPropagation();
}
close.onclick = function() {
    document.querySelector('.stay-in-touch').style.display = 'none';
    overlay.style.display = 'none';
}
overlay.onclick = function (){
    document.querySelector('.stay-in-touch').style.display = 'none';
    overlay.style.display = 'none';
}

const submitLink = document.querySelector(".auth-form__controls a");
    submitLink.onclick = function (){
        submitLink.setAttribute("href", "./personalInformation.html");
}

const navMobileOverlay = document.querySelector('.nav-mobile__overlay');

navBtnMobile.onclick = function() {
    navMobile.style.display = "block";
    navMobileOverlay.style.display = "block";
}

const iconExit = document.querySelector('.icon-exit');

iconExit.onclick = function () {
    navMobile.style.display = "none";
    navMobileOverlay.style.display = "none";
}

navMobileOverlay.onclick = function() {
    navMobile.style.display = "none";
    navMobileOverlay.style.display = "none"; 
}