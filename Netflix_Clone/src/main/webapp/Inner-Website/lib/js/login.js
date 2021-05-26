const mailRegex = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
    pwdRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,}$/

function login() {
    let email = document.getElementById('input-username').value,
        pwd = document.getElementById('input-password').value
    if (validEmail(email) && validPassword(pwd) && validDatabase(email, pwd)) {
        return true
    } else {
        alert('An error occured, please recheck your email and password!')
        return false
    }
}

function register() {
    let email = document.getElementById('input-username').value,
        pwd = document.getElementById('input-password').value,
        pwdConfirm = document.getElementById('input-confirm').value
    if (validEmail(email) && validPasswords(pwd, pwdConfirm) && validDatabase(email, pwd, true)) {
        window.location.href = '/Inner-website/login.html'
        alert('Account registed successfully')
        return true
    } else {
        alert('An error occured, please recheck your email and password!')
        return false
    }
}

function changePassword() {
    let email = 'getEmail',  // TODO: Get email from DB
        pwd = document.getElementById('input-current').value,
        pwdNew = document.getElementById('input-password').value,
        pwdConfirm = document.getElementById('input-confirm').value
    if (validPasswords(pwdNew, pwdConfirm) && validDatabase(email, pwd)) {
        window.location.href = '/Inner-website/account.html'
        alert('Password changed successfully')
        return true
    } else {
        alert('An error occured, please recheck your passwords!')
        return false
    }
}

function showElement(id) {
    let e = document.getElementById(id)
    e.style.display = "block"
}

function hideElement(id) {
    let e = document.getElementById(id)
    e.style.display = "none"
}

function toggleElement(id) {
    let e = document.getElementById(id)
    e.style.display = (e.style.display === "block") ?
        "none" : "block"
}

function validEmail(email) {
    return mailRegex.test(String(email).toLowerCase())
}

function validPassword(pwd) {
    return pwdRegex.test(String(pwd))
}

function validPasswords(pwd1, pwd2) {
    return pwdRegex.test(String(pwd1)) && (pwd1 === pwd2)
}

function validDatabase(email, pwd, isRegistering = false) {
    return true // TODO: verify with server
}