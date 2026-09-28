
*** Settings ***
Resource    ../pages/home_page.robot
Resource    ../pages/product_page.robot
Resource    ../pages/cart_page.robot

*** Keywords ***
Perform Product Cart Flow
    [Arguments]    ${product}    ${quantity}
    Search For Product    ${product}
    Open First Product Result
    Add Product To Cart
    Open Shopping Cart
    Verify Cart Is Visible
    Verify Product Exists In Cart    ${product}
