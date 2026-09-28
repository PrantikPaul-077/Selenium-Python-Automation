
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_INPUT}          css=input[data-qa="login-email"]
${PASSWORD_INPUT}       css=input[data-qa="login-password"]
${LOGIN_BUTTON}         css=button[data-qa="login-button"]
${ACCOUNT_ERROR}        css=.login-form p

*** Keywords ***
Login With Credentials
    [Arguments]    ${email}    ${password}
    Input Text    ${EMAIL_INPUT}    ${email}
    Input Password    ${PASSWORD_INPUT}    ${password}
    Click Element    ${LOGIN_BUTTON}

Verify Login Success
    Wait Until Page Contains    Logged in as    timeout=15s

Verify Login Failure Message
    Wait Until Page Contains    Your email or password is incorrect!    timeout=15s
