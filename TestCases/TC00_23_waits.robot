*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0023_waits

    Open Browser  https://www.demoblaze.com/  Chrome
    Wait Until Page Contains    Cart
    Wait Until Page Contains Element     xpath://*[@id="navbarExample"]/ul/li[3]/a
    Wait Until Element Contains     xpath://*[@id="navbarExample"]/ul/li[3]/a     About
    Wait Until Element Is Visible     xpath://*[@id="login2"]
    Wait Until Element Is Enabled     xpath://*[@id="login2"]


