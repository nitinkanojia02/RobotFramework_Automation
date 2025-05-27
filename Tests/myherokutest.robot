*** Settings ***

Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
Suite Setup   Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Setup    Go To    ${herokuapp_website}
Suite Teardown   Close Browser

*** Test Cases ***
Basic auth login
    Wait and click element      ${basic_auth_locator}
    Wait Until Location Contains    ${basic_auth_location_string}
    Go To    ${basic_auth_website_url}
    Wait Until Element Is Visible    ${basic_auth_bold_heading_locator}
    Wait Until Element Is Visible    ${basic_auth_subheading_locator}

Checkbox verification
    Wait and click element  ${checkbox_click_locator}
    Wait Until Location Contains    ${checkbox_location_check}
    Wait Until Element Is Visible   ${bold_checkbox_verify}
    Wait Until Element Is Visible    ${first_checkbox}
    Checkbox Should Not Be Selected    ${first_checkbox}
    Select Checkbox    ${first_checkbox}

Context menu check
    Wait and click element    ${context_menu_locator}
    Wait Until Location Contains    ${context_menu_url_check}
    Wait Until Element Is Visible    ${Context_heading_check}
    Wait Until Element Is Visible    ${Context_subheading_check}
    Open Context Menu    ${contextMenu_box_locator}
#    Alert Should Be Present    You selected a context menu
    ${alert message}   Handle Alert
    Log    ${alert message}

Dropdown practice
    Wait and click element    ${dropdown_icon_locator}
    Wait Until Location Contains    ${dropdown_url_check}
    Wait Until Element Is Visible    ${//h3[text()='Dropdown List']}
    Wait Until Element Is Visible    ${dropdown_text_locator}
    Click Element    ${dropdown_option_locator}
    Select From List By Label    ${dropdown_option_locator} Option 1




    
