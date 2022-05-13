*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check
Suite Setup     Open Browser     https://www.demoblaze.com/     Chrome
Suite Teardown     close
Force Tags      frc
*** Variables ***

*** Keywords ***
login
       Page Should Contain Elemcdent       xpath://*[@id="login2"]

close
      Close All Browsers

*** Test Cases ***
TC0038_forced tags

    [Documentation]   This test case is to check demoblaze website and perfrom few validations
     Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login

TC0037
    [Tags]   smoke      sanity
    Open Browser     https://www.demoblaze.com/     Chrome
    Close All Browsers