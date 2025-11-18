*** Settings ***
Library                 SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    [Documentation]
    #Initialize Selenium
    #set selenium speed              .2s
    set selenium timeout            10s
    log                             Starting the test case!
    open browser                   about:blank     ${BROWSER}


End Web Test
     close browser