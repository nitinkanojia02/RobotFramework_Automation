*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  gc
${snapdeal_url}  https://www.snapdeal.com
${search_textbox_locator}  name:keyword
${search_text_input}     smartwatch
${key_lebal}    ENTER
${searched_product_price_locator}   //span[@id='display-price-625736382559']

*** Keywords ***
Go to snapdeal
       Go To    ${snapdeal_url}

Enter Search Text in the Search Bar
       Wait Until Element Is Visible   ${search_textbox_locator}
       Input Text       ${search_textbox_locator}       ${search_text_input}
       Press Keys    ${search_textbox_locator}   ${key_lebal}

Fetch product price and print in console
       Wait Until Element Is Visible   ${searched_product_price_locator}
       ${search_product_price}  Get Text    ${searched_product_price_locator}
       Log To Console     ${search_product_price}
       Close Browser