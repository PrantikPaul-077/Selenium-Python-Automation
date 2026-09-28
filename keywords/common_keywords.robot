*** Settings ***
Resource    ../config/config.robot

*** Keywords ***
Start Test Session
    Open Application Browser

End Test Session
    Run Keyword And Ignore Error    Capture Failure Screenshot    test_end
    Close Application Browser
