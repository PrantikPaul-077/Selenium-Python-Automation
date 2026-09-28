
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${REGISTER_LOGIN_LINK}    xpath=//a[contains(@href, '/login')]
${PRODUCTS_LINK}          xpath=//a[contains(@href, '/products')]
${CART_LINK}              xpath=//a[contains(@href, '/view_cart')]
${LOGOUT_LINK}            xpath=//a[contains(@href, '/logout')]

${SEARCH_INPUT}           id=search_product
${SEARCH_BUTTON}          id=submit_search

*** Keywords ***
Go To Login Page
    Click Element    ${REGISTER_LOGIN_LINK}
    Wait Until Page Contains    Login to your account    timeout=15s

Go To Products Page
    Click Element    ${PRODUCTS_LINK}
    Wait Until Page Contains    ALL PRODUCTS    timeout=15s

Go To Cart Page
    Click Element    ${CART_LINK}
    Wait Until Page Contains    Shopping Cart    timeout=15s

Search For Product
    [Arguments]    ${product}
    Go To Products Page
    Input Text    ${SEARCH_INPUT}    ${product}
    Click Element    ${SEARCH_BUTTON}
    Wait Until Page Contains    SEARCHED PRODUCTS    timeout=15s

Logout From Application
    Click Element    ${LOGOUT_LINK}
    Wait Until Page Contains    Login to your account    timeout=15s
