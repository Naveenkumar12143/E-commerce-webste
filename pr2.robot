*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.flipkart.com/
${browser}      chrome

*** Test Cases ***
ValidationTest
    open browser    ${url}      ${browser}
    wait until page contains    ${url}
    maximize browser window
    set selenium speed  1second
    title should be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
#    ${input_txt}    set variable    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
#    element should be enabled   ${input_txt}
#    element should be visible    ${input_txt}
    input text    xpath:/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input      8074906077
    input text      xpath://input[@type='password']   naveen99
    click element    xpath://button[@type='submit']//span[contains(text(),'Login')]
    input text      xpath://input[@placeholder='Search for products, brands and more']     samsung mobiles
    click button    xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    click image     xpath://img[@alt='SAMSUNG Galaxy F23 5G (Copper Blush, 128 GB)']
    switch window       xpath://button[@class='_2KpZ6l _2U9uOA _3v1-ww']
#    click button    xpath://button[@class='_2KpZ6l _2U9uOA _3v1-ww']
#    input text    xpath://input[@id='pincodeInputId']   560037





#    close browser

*** Keywords ***


