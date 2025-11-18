*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${HOME_PAGE_HEADER} =                   It's Nice To Meet You


*** Keywords ***
Verify "Home" Page Loaded
    wait until page contains           ${HOME_PAGE_HEADER}