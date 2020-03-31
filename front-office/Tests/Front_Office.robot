*** Settings ***
Documentation  This test is to check for the team 
Resource  ../Resource/FrontOfficeApp.robot
Resource  ../Resource/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End web Test
*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.robotframeworktutorial.com/front-office

#robot -d tests/Front_Office.robot

*** Test Cases ***
Should be able to access "Team Page"
    [Documentation]  This is case number 1
    [Tags]  Smoke test
    log  Executing Test 1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page


"Team Page" should match requirements
    [Documentation]  This is case number 2
    [Tags]  Smoke test
    log  Executing Test 2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page

