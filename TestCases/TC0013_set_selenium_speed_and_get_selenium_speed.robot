*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC0013_set_selenium_speed_and_get_selenium_speed
    Set Selenium Speed    1 seconds
    Open Browser  ${Url}  ${Browser}
    Click Element   id:login2
    ${speed}  Get Selenium Speed
    Log To Console    ${speed}
    Input Text    id:loginusername    saket
    Input Password      id:loginpassword  saket
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Close Browser


*** Keywords ***
