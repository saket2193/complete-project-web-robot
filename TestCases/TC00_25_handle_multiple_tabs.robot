*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0025_handle_multiple_tabs

    Open Browser  https://the-internet.herokuapp.com/windows  Chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="content"]/div/a
    Switch Window    The Internet
    ${url1} =   Get Location
    Log To Console     ${url1}
    Switch Window      New Window
    ${url2} =   Get Location
    Log To Console     ${url2}
     #now switching using get window handles
    ${handles}=  Get Window Handles
     Switch Window  ${handles}[0]
     ${url3} =   Get Location
     Log To Console     ${url3}
    Switch Window     ${handles}[1]
    ${url4} =   Get Location
    Log To Console     ${url4}





