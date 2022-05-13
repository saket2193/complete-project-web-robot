*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC001_keywordswithoutarguments
    Open Browser  ${Url}  ${Browser}
    Click Element   id:login2
    Enter username password and login
    Close Browser


*** Keywords ***
Enter username password and login
    Input Text    id:loginusername    saket
    Input Password      id:loginpassword  saket
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]