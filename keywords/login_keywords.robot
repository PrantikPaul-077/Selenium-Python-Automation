*** Settings ***
Resource    ../pages/home_page.robot
Resource    ../pages/login_page.robot

*** Keywords ***
Perform Login
    [Arguments]    ${email}    ${password}
    Go To Login Page
    Login With Credentials    ${email}    ${password}

Check Successful Login
    Verify Login Success
