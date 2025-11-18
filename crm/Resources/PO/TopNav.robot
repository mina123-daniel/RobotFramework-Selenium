*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${TOPNAV_SIGNIN_LINK} =               id=SignIn
${LOGGEDOUT_SIGNOUT_LINK} =           Sign Out
*** Keywords ***
Click "Sign In" Link
    click link                        ${TOPNAV_SIGNIN_LINK}

CLICK "SIGN OUT" LINK
    click link                     ${LOGGEDOUT_SIGNOUT_LINK}