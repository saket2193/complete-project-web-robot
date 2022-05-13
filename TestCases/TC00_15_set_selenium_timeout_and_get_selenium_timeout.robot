*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Url}  https://www.demoblaze.com/
${Browser}  FireFox

*** Test Cases ***
TC0015_set_selenium_timeout_and_get_selenium_timeout

    Open Browser  ${Url}  ${Browser}
    Click Element   id:login2
    Input Text    id:loginusername    saket
    Set Selenium Timeout   10 seconds
    Input Password      id:loginpassword  saket
    Click Element       xpath=//*[@id="logInModal"]/div/div/div[3]/button[2]
    Wait Until Element Is Visible    xpath://*[@id="nameofuser"]
     ${defaultseleniumtimeout}  Get Selenium Timeout
    Log To Console    ${defaultseleniumtimeout}
    Close Browser


*** Keywords ***
