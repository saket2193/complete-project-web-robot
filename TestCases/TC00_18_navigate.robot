*** Settings ***
Library    SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0018_navigate

    Open Browser  https://www.demoblaze.com/  Chrome
    Go To  https://www.google.co.in/
    ${location}  Get Location
    Log To Console     ${location}
    Go Back
    Close Browser
