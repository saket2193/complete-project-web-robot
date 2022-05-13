*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check
Test Setup     Open Browser  https://www.demoblaze.com/    Chrome
Test Teardown           close

*** Variables ***

*** Keywords ***
login
       Page Should Contain Element       xpath://*[@id="login2"]

close
      Close All Browsers


*** Test Cases ***
TC0033_adding_setup and teardown_to_testsuite_level

    [Documentation]   This test case is to check demoblaze website and perfrom few validations
    Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login





