*** Settings ***

Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
Suite Setup   Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Setup    Go To    ${herokuapp_website}
Suite Teardown   Close Browser
Library    OperatingSystem

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
    Wait Until Element Is Visible    ${dropdown_heading_locator}
    Select From List By Label    ${dropdown_locator}    Option 1
    Select From List By Index    ${dropdown_locator}    2
    ${items_in_list}    Get List Items    ${dropdown_locator}
    FOR     ${items}    IN      ${items_in_list}[1:]
        log     ${items}
    END
    List Selection Should Be    ${dropdown_locator}     Option 2

Dynamic content test
    Wait and click element    ${dynamic_loading_locator}
    Wait Until Location Contains    ${dynamic_loading_changed_url_locator}
    Wait Until Element Is Visible    ${dynamic_loading_heading_locator}
    Wait and click element    ${example_no_1_locator}
    Wait and click element    ${start_button_locator}
    Wait Until Element Is Not Visible    ${start_button_locator}
    Wait Until Element Is Visible    ${inside_start_button}     10
    ${text_print}    Get Text    ${inside_start_button}
    Log    ${text_print}

Entry add test
    Wait and click element    ${entry_add_locator}
    Wait Until Location Contains    ${entry_url_new_locator}
    Wait Until Element Is Visible    ${heading_locator}
    Wait Until Keyword Succeeds     10    1              Wait and click element    ${click_here_button_locator}
    Wait Until Element Is Visible    ${model_window_locator}
    Wait and click element    ${close_locator}
    
    
File download testing
    Wait and click element    ${file_download_locator}
    Wait Until Location Contains    ${file_download_location}
    Wait Until Element Is Visible    ${file_heading_locator}
    Wait and click element    ${selenid_file_locator}
    Wait Until Created      ${selenid_path}

File upload testing
    Wait and click element    ${file_upload_locator}
    Wait Until Location Contains    ${file_upload_location_url}
    Wait Until Element Is Visible    ${file_upload_heading_locator}

    Choose File    ${choose_file_locator}    ${upload_file_path_locator}
   
#    Wait Until Created    ${upload_file_path_locator}
    Page Should Contain    IRCTC_Flights_2013456432(1)_1.pdf
    Wait and click element    ${upload_button_locator}
    Wait Until Element Is Visible    ${file_uploaded_heading_locator}

Form authentication testing
    Wait and click element    ${form_authentication_locator}
    Wait Until Location Contains    ${form_authentication_url_locator}
    Wait Until Element Is Visible    ${login_page_heading_locator}
    Wait and input text into element    ${username_box_locator}    ${username}
    Wait and input text into element    ${password_box_locator}    ${password}
    Wait and click element    ${login_button_locator}
    Wait Until Page Contains    You logged into a secure area!









    
