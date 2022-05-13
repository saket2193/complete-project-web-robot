*** Settings ***
Library    SeleniumLibrary
Documentation    This file is having test for different fuctionality check
Resource     Resources/Resource1.robot
*** Variables ***



*** Test Cases ***
TC0032_adding_setup and teardown_to_testsuite_level

    [Documentation]   This test case is to check demoblaze website and perfrom few validations
    Open Browser     https://www.demoblaze.com/     Chrome
    Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login





