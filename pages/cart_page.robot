
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_TABLE}          css=table.cart_info
${CART_ITEM_ROW}       css=table.cart_info tbody tr
${QUANTITY_INPUT}      css=input.cart_quantity_input
${PRODUCT_NAME_CELL}   css=td.cart_description h4
${DELETE_BUTTON}       css=a.cart_quantity_delete

*** Keywords ***
Verify Cart Is Visible
    Wait Until Page Contains Element    ${CART_TABLE}    timeout=15s
    Page Should Contain    Shopping Cart

Verify Product Exists In Cart
    [Arguments]    ${product}
    Wait Until Page Contains    ${product}    timeout=15s

Update First Product Quantity
    [Arguments]    ${quantity}
    Wait Until Page Contains Element    ${QUANTITY_INPUT}    timeout=15s
    Select All From List    ${QUANTITY_INPUT}
    Input Text    ${QUANTITY_INPUT}    ${quantity}
    Press Keys    ${QUANTITY_INPUT}    ENTER
    Sleep    2s

Verify Quantity
    [Arguments]    ${quantity}
    ${current}=    Get Element Attribute    ${QUANTITY_INPUT}    value
    Should Be Equal As Strings    ${current}    ${quantity}
