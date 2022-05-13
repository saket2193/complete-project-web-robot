*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0024_handle_multiple_browser

    Open Browser  https://www.demoblaze.com/  Chrome
    Maximize Browser Window
    Open Browser  https://www.google.co.in/   Chrome
    Maximize Browser Window
    Switch Browser    1      # we pass either index or aliases
    ${url1} =   Get Location
     Log To Console   ${url1}
      Switch Browser    2
    ${url2} =   Get Location
     Log To Console   ${url2}

