*** Settings ***
Library                 SeleniumLibrary
Resource                ../Resources/Common.robot
Resource                ../Resources/RfwApp.robot
Test Setup              Begin Web Page
Test Teardown           End Web Page

#Run the script
#  robot -d .\Results\ .\Tests\Rfw.robot
*** Variables ***
${URL} =                https://automationplayground.com/front-office/
${BROWSER} =            chrome

*** Test Cases ***
Checking The Team Page
    RfwApp.Go To "Home Page"
    RfwApp.Go To "Team Page"
    sleep   2s
    # Page allready loaded
    # Click on Team Page
    # Verify Page is Loaded


*** Keywords ***
