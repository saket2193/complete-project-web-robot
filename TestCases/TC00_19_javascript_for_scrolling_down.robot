*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0019_javascript_for_scrolling_down

    Open Browser  https://www.demoblaze.com/  Chrome
    Execute Javascript  window.scrollTo(0,1000)
    Close Browser

