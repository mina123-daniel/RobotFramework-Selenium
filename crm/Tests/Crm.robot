*** Settings ***
Documentation           This *******
Library                 SeleniumLibrary
Resource                ../Resources/Common.robot
Resource                ../Resources/CrmApp.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test
#Run the script
#  robot -d .\Results\ .\Tests\Crm.robot
*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =   MyPassword!

${EmailAddress} =           mina.emil.daniel@gmail.com
${FirstName} =              Mina
${LastName} =               Ebraheem
${City} =                   Eindhoven
${state} =                  AK
${gender} =                 male
${checkbox} =               promos-name

*** Test Cases ***
Should add a new customer
    [Documentation]         This is some basic info about the test
    [Tags]                  1006    Contacts    Smoke

    CrmApp.Go To "Home" Page
    #Login
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}         ${VALID_LOGIN_PASSWORD}
    #Add Customer
    CrmApp.Add "New Customer"       ${EmailAddress}    ${FirstName}    ${LastName}    ${City}   ${state}
    ...     ${gender}   ${checkbox}
    #Sign Out
    CrmApp.Sign Out


*** Keywords ***

