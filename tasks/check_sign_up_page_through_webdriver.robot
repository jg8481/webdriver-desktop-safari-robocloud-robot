*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Resource          keywords.robot

Suite Setup    Open Safari Browser To Specified URL
Suite Teardown    Close Browser

*** Tasks ***

Go to the sign up page from the login page.
    [Tags]    Desktop Safari
    Click Sign Up Link

Quickly check that the sign up page loaded.
    [Tags]    Desktop Safari
    Check The Sign Up Page
    #Check The Sign Up Page Demonstrate Failure

*** Keywords ***

Check The Sign Up Page Demonstrate Failure
    Page Should Contain    This should fail.
