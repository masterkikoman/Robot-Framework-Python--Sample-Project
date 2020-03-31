*** Settings ***
Documentation  This is a basic info about the  whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web test
Test Teardown  End web Test
*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458


#
*** Test Cases ***
Logged out user can search for product
    [Documentation]  This is some basic info about the test
    [Tags]  Search
    AmazonApp.Search for products
    AmazonApp.Do Some Custom Thing

Logged out user can view a product
    [Documentation]  This is some basic info about the test
    [Tags]  View
    AmazonApp.Search for products
    AmazonApp.Select product from Search Results

Logged out user can add product to cart
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search for products
    AmazonApp.Select product from Search Results
    AmazonApp.Add Product To Cart
    AmazonApp.Begin Check out


