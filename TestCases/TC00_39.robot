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
TC0039_fetch data

    [Documentation]   This test case is to check demoblaze website and perform few validations
     Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain      saket
    login
    ${page_title}     Get Title
    Log To Console      ${page_title}
    ${page_url}       Get Location
    Log To Console       ${page_url}
    ${selenium_speed}     Get Selenium Speed
    Log To Console      ${selenium_speed}
    ${fetch_value_of_element}    Get Value      xpath://*[@id="example-video_component_432-Uniform"]
    Log To Console      ${fetch_value_of_element}
    ${fetch_text_of_element}    Get Text     xpath://*[@id="itemc"]
    Log To Console       ${fetch_text_of_element}
    Go To      https://the-internet.herokuapp.com/dropdown
    ${Fetch selected value in dropdown}  Get Selected List Value     xpath://*[@id="dropdown"]
    Log To Console      ${Fetch selected value in dropdown}
    ${Fetch selected label in list/dropdown}     Get Selected List Label           xpath://*[@id="dropdown"]
    Log To Console      ${Fetch selected label in list/dropdown}
    ${Fetch list/dropdown items}   Get List Items       xpath://*[@id="dropdown"]
    Log To Console      ${Fetch list/dropdown items}
    ${Fetch element attribute}  Get Element Attribute       xpath://*[@id="dropdown"]     id
    Log To Console    ${Fetch element attribute}
    ${Fetch element count}      Get Element Count      xpath://*[@id="dropdown"]
    Log To Console      ${Fetch element count}
    ${Fetch source}     Get Source
    Log To Console      ${Fetch source}s
