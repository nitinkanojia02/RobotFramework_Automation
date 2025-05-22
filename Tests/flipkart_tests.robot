*** Settings ***
Resource    flipkart_tests_keywords.resource
Resource    common_utilities.resource
Test Setup    Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Teardown   Close Browser


*** Test Cases ***
Open google chrome and navigate to flipkart
    [Tags]  TCFLIP-01
    Go to    ${flipkart_URL}
    Enter text in search textbox on flipkart   ${flipkart_search_textbox_locator}  ${flipkart_search_text_input}
    Fetch product price and print in console






