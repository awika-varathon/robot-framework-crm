*** Settings ***
Documentation   Do Action Add New Customer
Resource        PO/AddCustomer.robot
Resource        PO/Customer.robot
Resource        PO/Home.robot
Resource        PO/Header.robot
Resource        PO/LoggedOut.robot
Resource        PO/Signin.robot

*** Variables ***


*** Keywords ***
Go To "Home" Page
    Home.Navigate To "Home" Page
    Home.Verify ""Home"" Page Loaded

#########################################
# Login & Logout
Login With Vaild Credentials
    [Arguments]    ${email}  ${password}
    Header.Click "Sign In" Link
    Signin.Verify "Login" Page Loaded
    Signin.Login With Vaild Credentials     ${email}  ${password}
    Customer.Verify "Customer" Page Loaded

Sign Out
    Header.Click "Sign Out" Link
    LoggedOut.Verify "Logout" Page Loaded

#########################################
# Add New Customer
Add New Customer
    Customer.Click "New Customer" Link
    AddCustomer.Verify "Add Customer" Page Loaded
    AddCustomer.Add New Customer
    Customer.Verify Customer Added Successfully
