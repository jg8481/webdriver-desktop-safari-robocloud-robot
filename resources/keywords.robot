*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}      https://owasp-goat-app.herokuapp.com/login
${BROWSER}        Safari
${RETRY_AMOUNT}    2
${SELENIUM_IMPLICIT_WAIT}    10

*** Keywords ***

Click Sign Up Link
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Capture Page Screenshot
    Sleep    2s
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1 sec    Wait Until Page Contains    Sign Up    0.5s
    Click Link    //a[@href="/signup"]    ##FYI, as of September 28, 2019. --> For some unknown reason this keyword will PASS and not do anything in the latest version of Safari Webdriver.##
    Go To    https://owasp-goat-app.herokuapp.com/signup

Check The Sign Up Page
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1 sec    Wait Until Page Contains    information    0.5s
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Sleep    2s
    Capture Page Screenshot

Open Safari Browser To Specified URL
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1s    Wait Until Page Contains    Password    0.5s
    Set Selenium Implicit Wait    ${SELENIUM_IMPLICIT_WAIT}
    Sleep    2s
    Capture Page Screenshot
