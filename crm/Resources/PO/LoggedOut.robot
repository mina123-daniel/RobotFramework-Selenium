*** Settings ***
Library                 SeleniumLibrary

*** Variables ***

${LOGGEDOUT_HEADER} =                     Signed Out
*** Keywords ***
Verfiy Page Loaded
    wait until page contains        ${LOGGEDOUT_HEADER}