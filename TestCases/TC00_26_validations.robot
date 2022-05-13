*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0026_various_validations

    Open Browser  https://www.demoblaze.com/    Chrome
    Maximize Browser Window
    Page Should Contain    Cart
    Page Should Not Contain     saket
    Page Should Contain Element     xpath://*[@id="login2"]
    Go To    https://the-internet.herokuapp.com/checkboxes
    Select Checkbox     xpath://*[@id="checkboxes"]/input[1]
    Checkbox Should Be Selected    xpath://*[@id="checkboxes"]/input[1]
    Go To    https://www.demoblaze.com/
    Element Text Should Be    //*[@id="navbarExample"]/ul/li[2]/a    Contact
    Element Text Should Not Be     //*[@id="navbarExample"]/ul/li[2]/a    sharma
    Element Should Contain      //*[@id="navbarExample"]/ul/li[2]/a    Con
    Element Should Not Contain     //*[@id="navbarExample"]/ul/li[2]/a     verma
    Title Should Be    STORE
    Element Should Be Enabled      //*[@id="navbarExample"]/ul/li[2]/a
    Element Should Be Visible       //*[@id="navbarExample"]/ul/li[2]/a









