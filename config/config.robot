*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

*** Variables ***
${BASE_URL}      https://automationexercise.com/
${BROWSER}        chrome
${HEADLESS}       false
${DEFAULT_TIMEOUT}    15s
${SCREENSHOT_DIR}    ${EXECDIR}${/}results${/}screenshots

*** Keywords ***
Open Application Browser
    [Documentation]    Opens the browser and navigates to the application.
    [Arguments]    ${browser}=${BROWSER}
    Open Browser    ${BASE_URL}    ${browser}
    Set Selenium Timeout    ${DEFAULT_TIMEOUT}
    Maximize Browser Window

Close Application Browser
    [Documentation]    Closes the current browser session.
    Close All Browsers

Capture Failure Screenshot
    [Documentation]    Captures a screenshot with a timestamp-friendly Robot name.
    [Arguments]    ${name}=failure
    Create Directory    ${SCREENSHOT_DIR}
    Capture Page Screenshot    ${SCREENSHOT_DIR}${/}${name}.png
