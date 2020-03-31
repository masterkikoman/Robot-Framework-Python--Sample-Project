*** Settings ***
Library  SeleniumLibrary
Library  ../Libraries/MyCustomLibrary.py
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResult.robot
Resource  ./PO/Product.robot
Resource  ./PO/Cart.robot
Resource  ./PO/SignIn.robot

*** Keywords ***
Do Some Custom Thing
    Do Something Special

Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Input Search Item
    #return value from keyword ${VARIABLE}
    ${ReturnedInfo} =  SearchResult.Search Result
    Log  ${ReturnedInfo}
Select product from Search Results
    Product.Product Result

Add Product To Cart
    Cart.Add Product To Cart

Begin Check out
    Cart.Proceed to Checkout
    SignIn.Check if page contains Sign In
