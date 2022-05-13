*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC0011_run_keyword
    ${keyword_var} =  Set Variable  log to console
    Run Keyword     ${keyword_var}  saket2193
*** Keywords ***
