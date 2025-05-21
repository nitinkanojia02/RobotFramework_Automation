*** Settings ***
Resource    mmt_tests_keywords.resource
Resource    common_utilities.resource
Test Setup    Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Teardown   Close Browser


*** Test Cases ***
Print all available flight rates and minimum flight rate
    [Tags]  TCMMT-01
    Go To   ${mmt_URL}
    Wait Until Element Is Visible    ${mmt_close_icon}
    Click Element    ${mmt_close_icon}
    Wait Until Element Is Visible    ${from_span_locator}
    Click Element    ${from_span_locator}
    Wait Until Element Is Visible  ${from_input_locator}
    Input Text    ${from_input_locator}    ${from_input_text}
    Wait Until Element Is Visible    ${suggested_from_search_result_locator}
    Click Element    ${suggested_from_search_result_locator}
    Wait Until Element Is Visible    ${to_span_locator}
    Click Element    ${to_span_locator}
    Wait Until Element Is Visible  ${to_input_locator}
    Input Text    ${to _input_locator}    ${to_input_text}
    Wait Until Element Is Visible    ${suggested_to_search_result_locator}
    Click Element    ${suggested_to_search_result_locator}
    Select day 15 in august month
    Click Element    ${search_button}
    Wait Until Element Is Visible    ${ok_got_it_button}
    Click Element    ${ok_got_it_button}
    Wait Until Element Is Visible    ${price_elements_list_locator}
    Fetch all prices append to list and print



    








