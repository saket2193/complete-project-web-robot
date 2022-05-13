*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC006_keywordswitharguments
    Open Browser  ${Url}  ${Browser}
    Click Element   id:login2
    Enter cred  saket  saket
    Close Browser


*** Keywords ***
[Arguments]  ${username}  ${password}
Enter cred
    Input Text    id:loginusername  ${username}
    Input Password      id:loginpassword  ${password}
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]