*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC0012_run_keyword_if
    ${keyword_var} =  Set Variable  YES
    Run Keyword If    '${keyword_var}'=='YES'  Log To Console     value found

*** Keywords ***
