*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Keywords ***
Check the "Team"
    wait until page contains  Our Amazing Team
