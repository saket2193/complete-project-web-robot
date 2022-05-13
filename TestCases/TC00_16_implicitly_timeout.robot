*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC0016_implicitly_timeout

    Open Browser  ${Url}  ${Browser}
    Set Browser Implicit Wait   10 seconds
    Click Element   id:login2
    Input Text    id:loginusername    saket
    Input Password      id:loginpassword  saket
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Wait Until Element Is Visible    xpath://*[@id="nameofuser"]
    Close Browser


*** Keywords ***
