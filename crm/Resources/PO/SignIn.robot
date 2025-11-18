*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${SIGNIN_PAGE_HEADER}=              Login
${SIGNIN_EMAIL_TEXTBOX} =           email-id
${SIGNIN_PASSWORD_TEXTBOX}=         password
${SIGNIN_SUBMIT_TEXTBOX}=           submit-id


*** Keywords ***
Verfiy Page Loaded
    wait until page contains    ${SIGNIN_PAGE_HEADER}


Login With Valid Credials
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Field          ${Email}
    Fill "Password" Field       ${Password}
    SignIn.Click "Submit" Button

Fill "Email" Field
    [Arguments]     ${Email}
    input text                  id=${SIGNIN_EMAIL_TEXTBOX}      ${Email}

Fill "Password" Field
    [Arguments]     ${Password}
    input text                  id=${SIGNIN_PASSWORD_TEXTBOX}      ${Password}

Click "Submit" Button
    click button                id=${SIGNIN_SUBMIT_TEXTBOX}