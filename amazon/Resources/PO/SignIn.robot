*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Check if page contains Sign In
    wait until page contains element  //h1[@class="a-spacing-small"]
    sleep  3
