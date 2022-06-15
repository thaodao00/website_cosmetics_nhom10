//modal show hide search
const iconSearch = $('.search-link')
const modal = $('.modal')
const iconClose = $('.modal__icon-close')
const inputSearch = $('.modal__input')
const searchHistory = $('.modal__history')

function showSearch() {
    modal.addClass('modal__open')
}

function hideSearch() {
    modal.removeClass('modal__open')
}

iconSearch.click(showSearch)
iconClose.click(hideSearch)
modal.click(hideSearch)
inputSearch.click(function (event) {
    event.stopPropagation()
})
searchHistory.click(function (event) {
    event.stopPropagation()
})

//Modal show hide account
const modalAccount = $('.modal-account')
const iconUsers = $('.login-link')
const authForms = $('.auth-form')
const registerForm = $('.register-form')
const loginForm = $('.login-form')
const loginFormBtn = $('.login-from__btn')
const registerFormBtn = $('.register-from__btn')
const backBtn = $('.auth-form__controls-back')
const navMobile = $('.nav-mobile')
const navBtnMobile = $('.nav-link')
const forgotBtn = $('.auth-form__help-link')
const forgotForm = $('.forgot-pass-form')


function showAccount() {
    modalAccount.addClass('modal-account__open')
}

function hideAccount() {
    modalAccount.removeClass('modal-account__open')
}

for (const iconUser of iconUsers) {
    iconUser.click(showAccount)
}
modalAccount.click(hideAccount)

loginFormBtn.click(function () {
    loginForm.style.display = "block"
    registerForm.style.display = "none"

})
registerFormBtn.click(function () {
    registerForm.style.display = "block"
    loginForm.style.display = "none"

})
forgotBtn.click(function () {
    loginForm.style.display = "none"
    forgotForm.style.display = "block"
})

for (const btn of backBtn) {
    btn.click(hideAccount)
}

for (const authForm of authForms) {
    authForm.click(function (e) {
        e.stopPropagation()
    })
}


const close = $('.close-js');
const overlay = $('.popup-overlay');
const popup = $('.popup');

popup.click(function (e) {
    e.stopPropagation();
})
close.click(function () {
    $('.stay-in-touch').style.display = 'none';
    overlay.style.display = 'none';
})
overlay.click(function () {
    $('.stay-in-touch').style.display = 'none';
    overlay.style.display = 'none';
})

const submitLink = $(".auth-form__controls a");
submitLink.click(function () {
    submitLink.setAttribute("href", "./personalInformation.html");
})

const navMobileOverlay = $('.nav-mobile__overlay');

navBtnMobile.click(function () {
    navMobile.style.display = "block";
    navMobileOverlay.style.display = "block";
})

const iconExit = $('.icon-exit');

iconExit.click(function () {
    navMobile.style.display = "none";
    navMobileOverlay.style.display = "none";
})

navMobileOverlay.click(function () {
    navMobile.style.display = "none";
    navMobileOverlay.style.display = "none";
})