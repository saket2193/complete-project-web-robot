*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0017_taking_sreenshot

    Open Browser  https://www.demoblaze.com/  Chrome
    Capture Page Screenshot   C:\Users\Admin\PycharmProjects\Robot_framework\TestCases\TC00_17.png
    Capture Page Screenshot   TC00_17_1.png
    Set Selenium Speed    2 seconds
    Close Browser