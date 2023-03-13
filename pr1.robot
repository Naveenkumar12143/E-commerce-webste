*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.amazon.com/
${browser}  chrome

*** Test Cases ***
Login
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1
    click element    nav-link-accountList
    input text      xpath://input[@id='ap_email']       8074906077
    click element    xpath://input[@id='continue']
    input text      xpath://input[@id='ap_password']    naveen99
    click element   xpath://input[@id='signInSubmit']
    click element    searchDropdownBox
    input text    xpath://input[@id='twotabsearchtextbox']      hp i5 laptop 8gb ram 512gb ssd
    click button    xpath://input[@id='nav-search-submit-button']
    click image     https://m.media-amazon.com/images/I/61eV-WJxFWL._AC_UY218_.jpg
#    click button    exportsUndeliverable-cart-announce

#    close browser

*** Keywords ***
