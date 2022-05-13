*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC0010_priting_all_values_from_list
    @{list1}  Create List  saket  12  67.9  sharma
    :FROM ${i}  IN @{list1}
    \  Log To Console    ${i}
*** Keywords ***
