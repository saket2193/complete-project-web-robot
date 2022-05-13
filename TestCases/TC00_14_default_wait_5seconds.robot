*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC0015_by_default_wait_5seconds

    Open Browser  ${Url}  ${Browser}
    Click Element   id:login2
    Input Text    id:loginusername    saket
    Input Password      id:loginpassword  saket
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Wait Until Element Is Visible    xpath://*[@id="nameofuser"]
    Close Browser


*** Keywords ***
