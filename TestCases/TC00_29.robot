*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Test1
   [Arguments]   ${arg1}
    Page Should Contain    Cart
    Page Should Not Contain      saket
    Page Should Contain Element       xpath://*[@id="login2"]
    Go To     ${arg1}
    Select Checkbox     xpath://*[@id="checkboxes"]/input[1]
    Checkbox Should Be Selected    xpath://*[@id="checkboxes"]/input[1]
    ${page_title}=    Get Title
    RETURN    ${page_title}
*** Test Cases ***
TC0029_User defined Keyword with Argument & Return Value
    Open Browser  https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Test1     https://the-internet.herokuapp.com/checkboxes





