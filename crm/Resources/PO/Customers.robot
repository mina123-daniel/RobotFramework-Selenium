*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${Customer_PAGE_HEADER}=              Our Happy Customers
${Customer_ADD_CUSTOMER_LINK} =       id=new-customer
${Customer_SUCCESS_LABEL} =           Success! New customer added.
*** Keywords ***
Verfiy Page Loaded
    wait until page contains        ${Customer_PAGE_HEADER}


Click "New Customer" Link
    click link                        ${Customer_ADD_CUSTOMER_LINK}

Verify Customer Added Succeddfully
    wait until page contains        ${Customer_SUCCESS_LABEL}