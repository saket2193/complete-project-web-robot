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
*** Test Cases ***
TC0028_keywords with arguments
    Open Browser  https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Test1     https://the-internet.herokuapp.com/checkboxes





