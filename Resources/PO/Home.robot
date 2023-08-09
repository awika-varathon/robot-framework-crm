*** Settings ***
Documentation   Landing Page of automationplayground.com
Library         SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL}                Customers Are Priority One

*** Keywords ***
Navigate To "Home" Page
    go to                           ${START_URL}

Verify ""Home"" Page Loaded
    wait until page contains        ${HOME_HEADER_LABEL}


