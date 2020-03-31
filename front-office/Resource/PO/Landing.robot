*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open website
    go to  ${START_URL}

Verify Landing Page
    wait until page contains  Welcome To Our Studio!
