*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Add Product To Cart
    click link  id=buybox-see-all-buying-choices-announce
    click button  xpath=//span[@id="a-autoid-0"]//input
    page should contain element  huc-v2-order-row-confirm-text

Proceed to Checkout
    click link  xpath=//a[@id="hlb-ptc-btn-native"]