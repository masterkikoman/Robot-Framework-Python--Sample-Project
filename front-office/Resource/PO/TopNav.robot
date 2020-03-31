*** Settings ***
Library  SeleniumLibrary
Resource  SeleniumLibrary
*** Variables ***


*** Keywords ***
Select "Team" Page
    click link  Team
    Sleep  3s