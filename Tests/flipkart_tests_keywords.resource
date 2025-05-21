*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}  gc
${flipkart_URL}   https://www.flipkart.com
${flipkart_search_textbox_locator}   //input[@name='q']
${flipkart_search_text_input}   alexa
${searched_product_price_locator}   (//a[contains(@title,'Alexa Echo Dot')])[1]/following-sibling::a//div[@class='Nx9bqj']
${key_label}   ENTER

*** Keywords ***
Go to flipkart
    Go To    ${flipkart_URL}

Enter text in search textbox on flipkart
    [Arguments]  ${search_textbox_locator}  ${search_text_input}
    Wait Until Element Is Visible    ${search_textbox_locator}
    Input Text    ${search_textbox_locator}    ${search_text_input}
    Press Keys    ${search_textbox_locator}   ${key_label}

Fetch product price and print in console
    Wait Until Element Is Visible   ${searched_product_price_locator}
    ${searched_product_price}   Get Text   ${searched_product_price_locator}
    Log To Console    \nThe Price of alexa dot is :: ${searched_product_price}