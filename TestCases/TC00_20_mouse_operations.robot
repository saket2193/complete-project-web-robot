*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***

*** Test Cases ***
TC0020_mouse_operations

    Open Browser  https://www.demoblaze.com/  Chrome
    Open Context Menu       xpath://*[@id="cat"]    # for right click
    Sleep     3 seconds
    Double Click Element    xpath://*[@id="navbarExample"]/ul/li[1]/a    # for double click
    Mouse Up     xpath://*[@id="navbarExample"]/ul/li[1]/a               # mouse up
    Mouse Down      xpath://*[@id="navbarExample"]/ul/li[1]/a            #mouse down
    Mouse Over      xpath://*[@id="cat"]                                 #mouse over



