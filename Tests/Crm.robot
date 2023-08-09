*** Settings ***
Documentation   This is some basic info about the whole suite
Resource        ../Resources/Common.robot
Resource        ../Resources/CrmApp.robot

Test Setup      Common.Begin Web Test
Test Teardown   Common.End Web Test

*** Variables ***
${BROWSER}                  chrome
${START_URL}                https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL}        admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD}     qwe

*** Test Cases ***
Should be able to Home page
    [Documentation]             Test navigate to home page address and verify page load.
    [Tags]                      1001    Smoke   Home
    CrmApp.Go To "Home" Page

Should be able to Login with Valid Credentials
    [Documentation]             Test the login with Valid Credentials.
    [Tags]                      1002    Smoke   Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Vaild Credentials     ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]             Test the login with Valid Credentials and logout.
    [Tags]                      1004    Smoke   Login
    CrmApp.Go To "Home" Page
    CrmApp.Login With Vaild Credentials     ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out


Should be able to add new customer
    [Documentation]             Test adding a new customer.
    [Tags]                      1006    Smoke   Contacts
    CrmApp.Go To "Home" Page
    CrmApp.Login With Vaild Credentials     ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out


