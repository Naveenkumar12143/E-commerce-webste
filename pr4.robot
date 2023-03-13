*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
Open Automation practice from
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1 second
    input text      xpath://input[@id='Wikipedia1_wikipedia-search-input']      ipl 2022
    click button    xpath://input[@type='submit']
*** Keywords ***

