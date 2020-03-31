*** Settings ***
Documentation  These are some API Tests
Resource  ../Resources/API/Github.robot

*** Variables ***

*** Test Cases ***
Make Simple Rest API Call
    [Tags]  API
    Check Github Username

Display emoji from github
    [Tags]  API
    Display Emoji