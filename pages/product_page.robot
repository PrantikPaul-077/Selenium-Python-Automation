
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCT_RESULT}       xpath=(//div[contains(@class, 'productinfo')])[1]
${ADD_TO_CART_BUTTON}   xpath=(//div[contains(@class, 'productinfo')]//a[contains(@class, 'add-to-cart')])[1]
${CART_NOTIFICATION}    xpath=//div[contains(@class, 'modal-content')]
${SHOPPING_CART_LINK}   xpath=//a[contains(@href, '/view_cart')]

*** Keywords ***
Open First Product Result
    Wait Until Page Contains Element    ${PRODUCT_RESULT}    timeout=15s
    Scroll Element Into View    ${PRODUCT_RESULT}

Add Product To Cart
    Wait Until Page Contains Element    ${ADD_TO_CART_BUTTON}    timeout=15s
    Scroll Element Into View    ${ADD_TO_CART_BUTTON}
    Click Element    ${ADD_TO_CART_BUTTON}
    Sleep    2s

Open Shopping Cart
    Wait Until Page Contains Element    ${SHOPPING_CART_LINK}    timeout=15s
    Click Element    ${SHOPPING_CART_LINK}
    Wait Until Page Contains    Shopping Cart    timeout=15s
