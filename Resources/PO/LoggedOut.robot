*** Settings ***
Documentation   Do Something in "Logout" Page
Library         SeleniumLibrary

*** Variables ***
${LOGOUT_HEADER_LABEL}           Signed Out

*** Keywords ***
Verify "Logout" Page Loaded
    wait until page contains    ${LOGOUT_HEADER_LABEL}