*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot
Resource  ./PO/Landing.robot
Resource  ./PO/Team.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing page
    Landing.Open website
    Landing.Verify Landing Page

Go to "Team" Page
    TopNav.Select "Team" Page

Validate "Team" Page
    Team.Check the "Team"


