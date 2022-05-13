*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check
Suite Setup     Open Browser     https://www.demoblaze.com/     Chrome
Suite Teardown     close
*** Variables ***

*** Keywords ***
login
       Page Should Contain Element       xpath://*[@id="login2"]

close
      Close All Browsers

*** Test Cases ***
TC0036_adding tags to test case

    [Documentation]   This test case is to check demoblaze website and perfrom few validations
    [Tags]   smoke
     Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login

TC0037

    [Tags]   smoke      sanity
    Open Browser     https://www.demoblaze.com/     Chrome
    Close All Browsers