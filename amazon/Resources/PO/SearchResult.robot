*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search Result
    wait until page contains  ${SEARCH_TERM}  #Ferrari 458
    #returning the value to ${ReturnedInfo}
    [Return]  Found it
