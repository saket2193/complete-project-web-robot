*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***

*** Test Cases ***
TC002_handle_checkbox
    Open Browser  https://the-internet.herokuapp.com/checkboxes  Chrome
    Maximize Browser Window
    Select Checkbox     xpath://*[@id="checkboxes"]/input[1]
    Checkbox Should Be Selected     xpath://*[@id="checkboxes"]/input[1]
    Unselect Checkbox    xpath://*[@id="checkboxes"]/input[1]
    Close Browser