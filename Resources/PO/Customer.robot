*** Settings ***
Documentation   Do Something on Customer Service Page
Library         SeleniumLibrary

*** Variables ***
${CUSTOMER_HEADER_LABEL}            Our Happy Customers
${NEW_CUSTOMER_LINK}                id=new-customer
${ADD_CUSTOMER_SUCCESS_LABEL}       Success! New customer added.

*** Keywords ***
Verify "Customer" Page Loaded
    wait until page contains        ${CUSTOMER_HEADER_LABEL}

Click "New Customer" Link
    click link                      ${NEW_CUSTOMER_LINK}

Verify Customer Added Successfully
     wait until page contains       ${ADD_CUSTOMER_SUCCESS_LABEL}