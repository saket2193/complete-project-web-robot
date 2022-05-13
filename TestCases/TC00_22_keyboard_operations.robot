*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0022_keyboard_operations

    Open Browser  https://www.demoblaze.com/  Chrome
    Click Element     xpath://*[@id="login2"]
    Press Key      id:loginusername    saket
    Press Key      id:loginusername    \\13           #in order to press any key.it uses ascii value of it.enter key value is 13


