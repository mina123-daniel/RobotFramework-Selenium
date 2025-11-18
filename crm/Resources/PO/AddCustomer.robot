*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =               Add Customer
${ADDCUSTOMER_EmailAddress_TEXTBOX} =       id=EmailAddress
${ADDCUSTOMER_FirstName_TEXTBOX} =          id=FirstName
${ADDCUSTOMER_LastName_TEXTBOX} =           id=LastName
${ADDCUSTOMER_City_TEXTBOX} =               id=City
${ADDCUSTOMER_State_TEXTBOX} =              id=StateOrRegion
${ADDCUSTOMER_Gender_TEXTBOX} =             gender
${ADDCUSTOMER_Submit_TEXTBOX} =             Submit

*** Keywords ***
Verfiy Page Loaded
    wait until page contains             ${ADDCUSTOMER_HEADER_LABEL}

Add "New Customer"
    [Arguments]    ${EmailAddress}    ${FirstName}
    ...            ${LastName}    ${City}   ${state}
    ...            ${gender}   ${checkbox}
    Fill "EmailAddress" Field       ${EmailAddress}
    Fill "FirstName" Field          ${FirstName}
    Fill "LastName" Field           ${LastName}
    Fill "City" Field               ${City}
    Fill "state" Field              ${state}
    Fill "gender" Field             ${gender}
    Check "checkbox" Field          ${checkbox}
    AddCustomer.Click "Submit" Button

Fill "EmailAddress" Field
    [Arguments]    ${EmailAddress}
    input text                      ${ADDCUSTOMER_EmailAddress_TEXTBOX}     ${EmailAddress}
Fill "FirstName" Field
    [Arguments]    ${FirstName}
    input text                      ${ADDCUSTOMER_FirstName_TEXTBOX}       ${FirstName}

Fill "LastName" Field
    [Arguments]    ${LastName}
    input text                      ${ADDCUSTOMER_LastName_TEXTBOX}        ${LastName}

Fill "City" Field
    [Arguments]    ${City}
    input text                      ${ADDCUSTOMER_City_TEXTBOX}            ${City}

Fill "state" Field
    [Arguments]    ${state}
    Select From List By Value       ${ADDCUSTOMER_State_TEXTBOX}        ${state}

Fill "gender" Field
    [Arguments]    ${gender}
    select radio button             ${ADDCUSTOMER_Gender_TEXTBOX}     ${gender}

Check "checkbox" Field
    [Arguments]    ${checkbox}
    select checkbox                 name=${checkbox}

Click "Submit" Button
    click button                    ${ADDCUSTOMER_Submit_TEXTBOX}