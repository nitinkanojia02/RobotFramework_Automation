*** Settings ***
Resource    mmt_tests_keywords.resource
Resource    common_utilities.resource
Test Setup    Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Teardown   Close Browser

*** Test Cases ***
Print all available flight rates and minimum flight rate
    [Tags]  TCMMT-01
    Go To   ${mmt_URL}
    Wait and click element   ${mmt_close_icon}
    Wait and click element   ${from_span_locator}
    Wait Until Element Is Visible  ${from_input_locator}
    Wait and input text into element  ${from_input_locator}    ${from_input_text}
    Wait and click element   {suggested_from_search_result_locator}
    Wait and click element   ${to_span_locator}
    Wait and input text into element    ${to _input_locator}    ${to_input_text}
    Wait and click element   ${suggested_to_search_result_locator}
    Select day 15 in august month
    Wait and click element     ${search_button}
    Wait and click element   ${ok_got_it_button}
    Wait Until Element Is Visible    ${price_elements_list_locator}
    ${flight_prices_returned_list}    Fetch all prices append to list and print
    Sort List    ${flight_prices_returned_list}
    Reverse List     ${flight_prices_returned_list}
    Log To Console    ${flight_prices_returned_list}[0]



    








