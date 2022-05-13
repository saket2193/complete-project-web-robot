*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check

*** Variables ***

*** Keywords ***
login
    [Documentation]   This keyword is to check demoblaze website and perfrom few validations
    Page Should Contain Element       xpath://*[@id="login2"]


*** Test Cases ***
TC0030_adding_documentation_to_testcase
    [Documentation]   This test case is to check demoblaze website and perfrom few validations

    Open Browser  https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login




