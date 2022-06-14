const myAccount = $('.nav__information-personal-account')
const myAccountList = $('.nav__information-my-account-list')
const purchaseOrder = $('.nav__information-personal-purchase')
const purchaseOrderName = $('.nav__information-personal-purchase .nav__information-personal-name')
const purchaseOrderMain = $('.purchase-order')
const myAccountMain = $('.my-account')
const tabActive = $('.my-account__main.active-tab')

myAccount.click(function () {
    myAccountList.css("display", "block")
    purchaseOrderName.removeClass('active-btn')
    purchaseOrderMain.css("display", "none")
    myAccountMain.css("display", "block")
})
purchaseOrder.click(function () {
    myAccountList.css("display", "none")
    purchaseOrderName.addClass('active-btn')
    purchaseOrderMain.css("display", "block")
    myAccountMain.css("display", "none")
})

myAccountList.children('li').click((e, index) => {
    myAccountList.children('li').removeClass('active-btn')
    $('.nav__information-my-account-list li:nth-child(1)').addClass('active-btn')
    myAccountMain.children().removeClass('active-tab')
    $('.my-account .my-account__main:nth-child(1)').addClass('active-tab')
})

myAccountList.children('li').each(index => {
    $(`.nav__information-my-account-list li:eq(${index})`).click(() => {
        myAccountList.children('li').removeClass('active-btn')
        $(`.nav__information-my-account-list li:eq(${index})`).addClass('active-btn')
        myAccountMain.children().removeClass('active-tab')
        $(`.my-account .my-account__main:eq(${index})`).addClass('active-tab')
    })
})

$('.nav__information-orders-list').children('li').each(index => {
    $(`.nav__information-orders-list li:eq(${index})`).click(() => {
        $('.nav__information-orders-list').children('li').removeClass('active-btn')
        $(`.nav__information-orders-list li:eq(${index})`).addClass('active-btn')
        $('.nav__information-orders-content').removeClass('active-btn')
        $(`.nav__information-orders-content:eq(${index})`).addClass('active-btn')
    })
})

$('#form-userinfo-submit').css('display', 'none')
$('#form-userinfo .my-account__form-name').children('input').each(index => {
    $(`#form-userinfo .my-account__form-name input:eq(${index})`).attr('name', $(`#form-userinfo .my-account__form-name input:eq(${index})`).attr('id'))
})

$('.edit-user-info').click(() => {
    $('.edit-user-info').css('display', 'none')
    $('#form-userinfo input').removeAttr('disabled')
    $('#form-userinfo select').removeAttr('disabled')
    $('#form-userinfo-submit').css('display', 'block')
})