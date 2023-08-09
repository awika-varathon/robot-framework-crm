*** Settings ***
Documentation   Common Setting
Library         SeleniumLibrary

*** Keywords ***
Begin Web Test
    # Slow test speed
    #set selenium speed          .2s
    #set selenium timeout        10s
    #log                         Starting the test case.
    open browser            about:blank    ${BROWSER}
    #Set Window
    set window position     x=0    y=0
    set window size         width=1280      height=1090

End Web Test
    sleep                   3s
    close browser