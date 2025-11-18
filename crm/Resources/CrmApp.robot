*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***

*** Keywords ***
Go To "Home" Page
    Home.Navigate To

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verfiy Page Loaded
    SignIn.Login With Valid Credials    ${Email}     ${Password}
    Customers.Verfiy Page Loaded

Add "New Customer"
    [Arguments]     ${EmailAddress}    ${FirstName}
    ...             ${LastName}    ${City}   ${state}
    ...             ${gender}   ${checkbox}
    Customers.Click "New Customer" Link
    AddCustomer.Verfiy Page Loaded
    AddCustomer.Add " New Customer"   ${EmailAddress}    ${FirstName}
    ...                             ${LastName}    ${City}   ${state}
    ...                             ${gender}   ${checkbox}
    Customers.Verify Customer Added Succeddfully

Sign Out
    TOPNAV.CLICK "SIGN OUT" LINK
    LoggedOut.Verfiy Page Loaded