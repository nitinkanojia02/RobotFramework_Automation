*** Settings ***
Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
Suite Setup   Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Setup    Go To    ${herokuapp_website}
Suite Teardown   Close Browser


*** Test Cases ***
Drag and drop test
    Wait and click element  ${drag_and_drop_locator}
    Wait Until Location Contains     ${drag_and_drop_location_string}
    Wait Until Element Is Visible    ${drag_and_drop_heading_locator}
    ${headers_text_list}  Get texts from all visible elements  ${elements_header}
    Should Be Equal    ${headers_text_list}[0]    A
    Should Be Equal    ${headers_text_list}[1]    B
    Drag And Drop      ${a_element_locator}  ${b_element_locator}
    ${headers_text_list}  Get texts from all visible elements  ${elements_header}
    Should Be Equal    ${headers_text_list}[0]    B
    Should Be Equal    ${headers_text_list}[1]    A




    
    







