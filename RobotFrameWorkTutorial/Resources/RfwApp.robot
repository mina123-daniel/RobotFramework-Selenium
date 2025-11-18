*** Settings ***
Library                 SeleniumLibrary
Resource                ../Resources/PO/Home.robot
Resource                ../Resources/PO/TopNav.robot
*** Variables ***



*** Keywords ***
Go To "Home Page"
    go to    ${URL}
    Home.Verify "Home" Page Loaded


Go To "Team Page"
    TopNav.Click On "Team" Page