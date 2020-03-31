*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =  id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input
*** Keywords ***
Input Search Item
    input text    ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}  #Ferrari 458
    click button  ${TOPNAV_SEARCH_BUTTON}


