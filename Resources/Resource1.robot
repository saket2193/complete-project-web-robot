*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
login
       Page Should Contain Element       xpath://*[@id="login2"]

close
      Close All Browsers








