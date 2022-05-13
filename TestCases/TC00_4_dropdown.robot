*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Variables ***

*** Test Cases ***
TC002_handle_dropdowns
    Open Browser  https://the-internet.herokuapp.com/dropdown  Chrome
    Maximize Browser Window
    Select From List By Index    id:dropdown  2
    Select From List By Label    id:dropdown  Option 1
    Select From List By Value    id:dropdown  1

    Unselect From List By Index    id:dropdown  2
    Unselect From List By Label    id:dropdown  Option 1
    Unselect From List By Value    id:dropdown  1
