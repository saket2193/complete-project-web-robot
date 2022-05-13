*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC009_for_loop_with_range
    :FOR ${i}   IN RANGE    1  10
     \  log to console  ${i}
*** Keywords ***
