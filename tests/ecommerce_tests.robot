
*** Settings ***
Documentation    E-commerce automation suite for Capstone Assignment 4.

Resource         ../config/config.robot
Resource         ../keywords/common_keywords.robot
Resource         ../keywords/login_keywords.robot
Resource         ../keywords/product_keywords.robot

Library          DataDriver    file=../data/test_data.csv    dialect=excel

Suite Setup      Start Test Session
Suite Teardown   End Test Session
Test Template    Execute E-Commerce Flow
Test Teardown    Run Keyword And Ignore Error    Capture Failure Screenshot    ${TEST NAME}

*** Test Cases ***
E-Commerce Login And Cart Flow
    ${email}    ${password}    ${product}    ${quantity}

*** Keywords ***
Execute E-Commerce Flow
    [Arguments]    ${email}    ${password}    ${product}    ${quantity}

    # Login
    Perform Login    ${email}    ${password}
    Check Successful Login

    # Product and cart flow
    Perform Product Cart Flow    ${product}    ${quantity}

    # Logout
    Logout From Application
