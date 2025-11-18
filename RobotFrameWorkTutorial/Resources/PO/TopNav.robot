*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${TEAM_PAGE_HEADER} =                  Our Amazing Team
${TEAM_PAGE_HREF} =                    Team

*** Keywords ***
Verify "Team" Page Loaded
    wait until page contains           ${TEAM_PAGE_HEADER}

Click On "Team" Page
    click link                          ${TEAM_PAGE_HREF}
    TopNav.Verify "Team" Page Loaded