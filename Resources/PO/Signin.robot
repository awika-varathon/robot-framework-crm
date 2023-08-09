*** Settings ***
Documentation   Do Something in "Login" Page
Library         SeleniumLibrary

*** Variables ***
${LOGIN_HEADER_LABEL}           Login

${LOGIN_INPUT_EMAIL}            id=email-id
${LOGIN_INPUT_PASSWORD}         id=password

${LOGIN_BUTTON_SUBMIT}          id=submit-id

*** Keywords ***
Verify "Login" Page Loaded
    wait until page contains    ${LOGIN_HEADER_LABEL}

Login With Vaild Credentials
    [Arguments]    ${email}  ${password}
    Fill "Email" Field          ${email}
    Fill "Password" Field       ${password}
    Click "Submit" button

# Do Action In Login Form
Fill "Email" Field
    [Arguments]   ${email}
    log                         Filling email filed with ${email}
    input text                  ${LOGIN_INPUT_EMAIL}      ${email}

Fill "Password" Field
    [Arguments]    ${password}
    log                         Filling password filed with ${password}
    input text                  ${LOGIN_INPUT_PASSWORD}   ${password}

Click "Submit" button
    click button                ${LOGIN_BUTTON_SUBMIT}

# Result Failed
Result Failed Filled Email

Result Failed Filled Password

Result Failed Format Email









