*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC007_definingvariablesintestcasecategory
    ${browser}  Set Variable  Chrome
    Log To Console    ${browser}


*** Keywords ***
