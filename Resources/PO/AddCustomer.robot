*** Settings ***
Documentation   Do Something on New Customer Page
Library         SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_HEADER_LABEL}            Add Customer

${ADD_CUSTOMER_INPUT_EMAIL}             id=EmailAddress
${ADD_CUSTOMER_INPUT_FIRST_NAME}        id=FirstName
${ADD_CUSTOMER_INPUT_LAST_NAME}         id=LastName
${ADD_CUSTOMER_INPUT_CITY}              id=City
${ADD_CUSTOMER_DROPDOWN_STATE}          id=StateOrRegion
${ADD_CUSTOMER_RADIO_GENDER}            gender
${ADD_CUSTOMER_CHECKBOX_PROMO}          name=promos-name

${ADD_CUSTOMER_BUTTON_SUBMIT}           Submit

*** Keywords ***
Verify "Add Customer" Page Loaded
    wait until page contains        ${ADD_CUSTOMER_HEADER_LABEL}

Add New Customer
    Fill "New Customer" Fields
    Click "Submit" button

Fill "New Customer" Fields
    input text                      ${ADD_CUSTOMER_INPUT_EMAIL}         automatedTest@test.com
    input text                      ${ADD_CUSTOMER_INPUT_FIRST_NAME}    Automated
    input text                      ${ADD_CUSTOMER_INPUT_LAST_NAME}     Test
    input text                      ${ADD_CUSTOMER_INPUT_CITY}          USA
    select from list by value       ${ADD_CUSTOMER_DROPDOWN_STATE}      CA
    select radio button             ${ADD_CUSTOMER_RADIO_GENDER}        female
    select checkbox                 ${ADD_CUSTOMER_CHECKBOX_PROMO}

Click "Submit" button
    click button                ${ADD_CUSTOMER_BUTTON_SUBMIT}