*** Settings ***
Documentation   Do Something on Header
Library         SeleniumLibrary

*** Variables ***
${HEADER_CUSTOM_SERVICE}    Customer Service
${HEADER_SIGNIN}            id=SignIn
${HEADER_SIGNOUT}           Sign Out

*** Keywords ***
Click "Customer Service" Link
    click link              ${HEADER_CUSTOM_SERVICE}

Click "Sign In" Link
    click link              ${HEADER_SIGNIN}

Click "Sign Out" Link
    click link              ${HEADER_SIGNOUT}