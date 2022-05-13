*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***

*** Test Cases ***
TC002_handle_radiobuttons
    Open Browser  https://www.facebook.com/signup  Chrome
    Maximize Browser Window
    Click Link  linktext:Try this example!
    Click Element  xpath://*[@id="u_0_7_r4"]
