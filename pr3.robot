*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://www.opencart.com/
${browser}      chrome

*** Test Cases ***
Open opencart practice from
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed     1 second
    click element    //*[@id="navbar-collapse-header"]/div/a[2]
    input text      xpath://input[@id='input-username']     NAVEEN1999
    input text      input-firstname     praveen
    input text      input-lastname      kumar
    input text      input-email     naveenk12143@gmail.com
    click element   //select[@id='input-country']
    select from list by label   input-country   India
    input text      input-password      NavveeN@6077
    click element    xpath://div[@class='bg-info']
    click image     captcha-image
    click button    submit
    click image    //*[@id="captcha-image"]/ul/li[3]/a/img
    click button    //i[@class='fa fa-refresh']
    click image    //*[@id="captcha-image"]/ul/li[4]/a/img

