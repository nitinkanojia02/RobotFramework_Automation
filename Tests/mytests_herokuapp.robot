*** Settings ***
Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
Library     OperatingSystem
Suite Setup   Run Keywords   Open Browser  ${None}   ${browser}   AND   Maximize Browser Window
Test Setup    Go To    ${herokuapp_website}
Suite Teardown   Close Browser


*** Test Cases ***
AB Testing variation
    Wait and click element      ${AB_Testing_locator}
    Wait Until Location Contains    ${AB_Testing_location_string}
    Wait Until Element Is Visible   ${AB_Testing_heading_locator}
    Wait Until Element Is Visible    ${ab_testing_verification_message_locator}

Add Remove Elements
    Wait and click element      ${Add_Remove_Elements_locator}
    Wait Until Location Contains    ${Add_Remove_Elements_location_string}
    Wait Until Element Is Visible   ${Add_Remove_Elements_heading_locator}
    Wait and click element      ${Add_Elements_locator}
    Wait and click element      ${Delete_Elements_locator}
    Wait Until Element Is Not Visible    ${Delete_button_locator}

Basic Auth Testing
    Wait and click element      ${basic_auth_locator}
    Wait Until Location Contains        ${basic_auth_location_string}
    Go To    ${basic_auth_website}
    Wait Until Element Is Visible       ${basic_auth_heading_locator}
    Wait Until Element Is Visible   ${basic_auth_successful_message}

Chcekbox testing
   Wait and click element       ${checkbox_locator}
   Wait Until Location Contains     ${checkbox_location_string}
   Wait Until Element Is Visible        ${checkbox_heading_locator}
   Wait Until Element Is Visible     ${first_checkbox_locator}
   Checkbox Should Not Be Selected     ${first_checkbox_locator}
   Select Checkbox     ${first_checkbox_locator}
   Checkbox Should Be Selected     ${first_checkbox_locator}


# ise logic ke sath ek baar bhaiya se puchhna hai

Context menu rightclick verification
   Wait and click element       ${context_menu_locator}
   Wait Until Location Contains        ${context_menu_location_string}
   Wait Until Element Is Visible      ${context_menu_heading_locator}
   Wait Until Element Is Visible     ${context_menu_message_locator}
   Open Context Menu    ${context_menu_display_locator}
#   Alert Should Be Present     You selected a context menu
   ${alert_message}     Handle Alert
   Log      ${alert_message}

# doubt=   why it is giving error while using handle keyword
# how to print this alert msg in console

Disappearing elements verification
     Set Selenium Speed     1
     Wait and click element      ${disappearing_elements_locator}
     Wait Until Location Contains       ${disappearing_elements_location_string}
     Wait Until Element Is Visible      ${disappearing_elements_heading_locator}

     ${items}     Create List    Home   About   Contact Us   Portfolio   Gallery
     FOR    ${item}    IN    @{items}
     Element Should Be Visible    ${all_disappearing_elements_locator}
     END
     Log    All menu items verified successfully

     Reload Page

     Element Should Not Be Visible     ${gallery_button_locator}
     Log     Gallery item is not visible after relod


Dropdown verfication
     Set Selenium Speed    0.2
     Wait and click element     ${dropdown_locator}
     Wait Until Location Contains       ${dropdown_location_string}
     Wait Until Element Is Visible      ${dropdown_heading}
     ${items}=    Get List Items     ${dropdown_list_locator}
     FOR    ${item}    IN    @{items}
         Log    ${item}

     END
     Select From List By Label    ${dropdown_list_locator}     Option 1
     List Selection Should Be     ${dropdown_list_locator}      Option 1
     Log      dropdown option 1 verified successfully


forbes top 10 billioners list
     [Setup]    Go To     ${forbes_website_url}
     Wait Until Element Is Visible    ${forbes_top10_person_locator}
#     ${elements_text_list}   Create List
#     ${names}   Get WebElements     ${forbes_top10_person_locator}
#     FOR     ${name}    IN    @{names}
#             ${text}   Get Text     ${name}
#             Append To List       ${elements_text_list}      ${text}
#     END
     Get texts from all visible elements  ${forbes_top10_person_locator}


Dynamic loaded page elements
      Wait and click element        ${dynamic_loading_locator}
      Wait Until Location Contains    ${dynamic_loading_location_string}
      Wait Until Element Is Visible     ${dynamic_loading_heading}
      Wait Until Element Is Visible    ${dynamic_loading_message}
      Wait and click element    ${dynamic_loading_example1_locator}
      Wait Until Element Is Visible    ${example1_page_hidden_message}
      Wait and click element    ${start_button_locator}
      Wait Until Element Is Visible    ${hello_world_locator}

Entry ad test case verification
      Set Selenium Speed    0.2
      Wait and click element    ${entry_add_locator}
      Wait Until Location Contains    ${entry_add_location_string}
      Wait Until Element Is Visible    ${entry_add_modal_window_locator}
      Wait Until Element Is Visible    ${entry_add_modal_window_message}
      Wait and click element    ${entry_add_close_locator}
      Wait Until Element Is Visible    ${entry_add_heading_locator}
      Wait Until Element Is Visible    ${entry_add_display_message_locator}
      Wait Until Keyword Succeeds    10    3     Wait and click element     ${entry_add_re_enable_locator}
      Wait Until Element Is Visible    ${entry_add_modal_window_locator}
      Wait Until Element Is Visible    ${entry_add_modal_window_message}
      Wait and click element    ${entry_add_close_locator}

# doubt 1) --  why re enable function test case giving error, line 120  to  122
#       2)  --  can we make common keyword of these three lines

Exit intent verification
       Wait and click element    ${exit_intent_locator}
       Wait Until Location Contains    ${exit_intent_location_string}
       Wait Until Element Is Visible    ${exit_intent_heading_locator}
       Wait Until Element Is Visible    ${exit_intent_heading_message}

#  doubt --  mouse ko upar le jaane nahi aa rha

Check if file is downloaded
       Wait and click element    ${file_download_locator}
       Wait Until Location Contains    ${file_download_location_string}
       Wait Until Element Is Visible    ${file_download_heading_locator}
       Wait and click element    ${test_upload_link_locator}
       ${file_path}=   Set Variable     ${test_upload_download_path}
       File Should Exist    ${file_path}

check if file is upload
       Wait and click element    ${file_upload_locator}
       Wait Until Location Contains    ${file_upload_location_string}
       Wait Until Element Is Visible    ${file_uploader_heading_locator}
       Choose File    ${choose_file_locator}    ${file_upload_path}
       Wait and click element    ${upload_locator}







          
    










