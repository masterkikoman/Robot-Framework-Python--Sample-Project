*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    go to  ${START_URL}
    maximize browser window
Verify Page Loaded
    wait until page contains  Today's Deals
