*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check
Test Timeout   10s
*** Variables ***

*** Keywords ***
login
    [Timeout]    5s
    Page Should Contain Element       xpath://*[@id="login2"]


*** Test Cases ***
TC0031_adding_timeout_to_testcase
    [Documentation]   This test case is to check demoblaze website and perfrom few validations
    [Timeout]    50s
    Open Browser  https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login
    Close Browser




