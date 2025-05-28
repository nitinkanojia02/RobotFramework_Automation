*** Settings ***
Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
Library     OperatingSystem
Library    MouseActions.py
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
    Wait and click element      ${delete_button_locator}
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
     Set Selenium Speed     0.1
     Wait and click element      ${disappearing_elements_locator}
     Wait Until Location Contains       ${disappearing_elements_location_string}
     Wait Until Element Is Visible      ${disappearing_elements_heading_locator}

     ${items}     Create List    Home   About   Contact Us   Portfolio   Gallery
     FOR    ${item}    IN    @{items}
     Wait Until Element Is Visible    ${all_disappearing_elements_locator}
     END
     Log    All menu items verified successfully

     Reload Page
     Sleep    1
     Reload Page

     Wait Until Element Is Not Visible     ${gallery_button_locator}   15
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
      Wait Until Element Is not Visible    ${start_button_locator}

Entry ad test case verification
      Set Selenium Speed    0.2
      Wait and click element    ${entry_add_locator}
      Wait Until Location Contains    ${entry_add_location_string}
      Wait Until Element Is Visible    ${entry_add_modal_window_locator}
      Wait Until Element Is Visible    ${entry_add_modal_window_message}
      Wait and click element    ${entry_add_close_locator}
      Wait Until Element Is Visible    ${entry_add_heading_locator}
      Wait Until Element Is Visible    ${entry_add_display_message_locator}
      ${renable}   Get WebElements     ${entry_add_re_enable_locator}
      Wait Until Keyword Succeeds    10    3     Wait and click element     ${renable}
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
       Move Mouse To Coordinates    100    200
       Sleep    2s

#  doubt -- why it is giving no browser error

Check if file is downloaded
       Wait and click element    ${file_download_locator}
       Wait Until Location Contains    ${file_download_location_string}
       Wait Until Element Is Visible    ${file_download_heading_locator}
       Wait and click element    ${test_upload_link_locator}
       ${file_path}=   Set Variable     ${test_upload_download_path}
       Wait Until Created    ${file_path}


check if file is upload
       Wait and click element    ${file_upload_locator}
       Wait Until Location Contains    ${file_upload_location_string}
       Wait Until Element Is Visible    ${file_uploader_heading_locator}
       Choose File    ${choose_file_locator}    ${file_upload_path}
       Wait and click element    ${upload_locator}
       Wait Until Page Contains    A Timeless Spring

form authentication test
       Wait and click element    ${form_authentication_locator}
       Wait Until Location Contains    ${form_authentication_location_string}
       Wait Until Element Is Visible    ${form_authentication_heading_locator}
       Wait and input text into element    ${username_locator}    ${username_text}
       Wait and input text into element    ${password_locator}    ${password_text}
       Wait and click element    ${login_locator}
       Wait Until Page Contains    You logged into a secure area!
       Wait Until Element Is Visible    ${successful_message_locator}
       Wait and click element    ${logout_locator}

frame handling
       Wait and click element    ${frame_locator}
       Wait Until Element Is Visible    ${frame_heading_locator}
       Wait and click element    ${nested_frames_locator}
       Wait Until Location Contains    ${frame_location_string}
       Select Frame    ${top_frame_locator}
       Select Frame    ${top_left_frame_locator}
       ${left text}    Get Text    ${left_text_locator}
       Log    ${left text}
       Unselect Frame
       Select Frame    ${top_frame_locator}
       Select Frame    ${top_middle_frame_locator}
       ${middle text}   Get Text    ${middile_text_locator}
       log   ${middle text}
       Unselect Frame
       Select Frame    ${top_frame_locator}
       Select Frame    ${top_right_frame_locator}
       ${right text}   Get Text    ${right_text_locator}
       log    ${right text}
       Unselect Frame
       Select Frame    ${bottom_frame_locator}
       ${bottom text}   Get Text    ${bottom_text_locator}
       Log    ${bottom text}

       Go To     ${go_to_url}
       Wait and click element    ${iframe_locator}
       Wait Until Location Contains    ${iframe_location_string}
       Wait Until Element Is Visible    ${iframe_heading_locator}
       Wait and click element    ${iframe_cancel_button_locator}
       Select Frame    ${inside_iframe_locator}
       ${iframe text}   Get Text  ${iframe_text_locator}
       log    ${iframe text}

Horizontal slider handling
       Wait and click element    ${horizontal_slider_locator}
       Wait Until Location Contains    ${horizontal_slider_location_string}
       Wait Until Element Is Visible    ${horizontal_slider_heading_locator}
       Drag And Drop By Offset    ${slider_locator}    0   5

# how to verify that the drag and drop by offset did work or not

Mouse hovering test
       Wait and click element    ${hovers_locator}
       Wait Until Location Contains    ${hovers_location_string}
       Wait Until Element Is Visible    ${hovers_heading_locator}
       Wait Until Element Is Visible    ${hovers_message_locator}
       Mouse Over    ${user1_img_locator}
       Wait Until Element Is Visible    ${name_user1_locator}
       Mouse Over    ${user2_img_locator}
       Wait Until Element Is Visible    ${name_user2_locator}
       Mouse Over    ${user3_img_locator}
       Wait Until Element Is Visible    ${name_user3_locator}
       
Jquery ui menu test
       Wait and click element    ${jquery_locator}
       Wait Until Location Contains    ${jquery_location_string}
       Wait Until Element Is Visible    ${jquery_heading_locator}
       Mouse Over    ${enabled_locator}
       Mouse Over    ${download_locator}
       Wait and click element    ${excel_file_locator}
       File Should Exist       ${excel_file_path}
       
Javascript alert handling
       Wait and click element    ${javascript_alert_locator}
       Wait Until Location Contains    ${javascript_alert_location_string}
       Wait Until Element Is Visible    ${javascript_alert_heading_locator}
       Wait and click element    ${js_alert_locator}
       Alert Should Be Present      I am a JS Alert
       Wait Until Element Is Visible    ${alert_successful_locator}
       Wait and click element    ${js_confirm_locator}
       Handle Alert   dismiss
       Wait Until Element Is Visible    ${alert_cancel_locator}
       Wait and click element    ${js_prompt_locator}
       Input Text Into Alert    Dekh khud ko gaur se
       Wait Until Element Is Visible    ${prompt_text_locator}

Key presses test
       Wait and click element    ${key_presses_locator}
       Wait Until Location Contains    ${key_presses_location_string}
       Wait Until Element Is Visible    ${key_presses_heading_locator}
       Press Key    ${key_presses_input_locator}    SHIFT

# how to press enter shift from keybord

Multiple windows
      Wait and click element    ${multiple_window_locator}
      Wait Until Location Contains    ${multiple_window_locator_string}
      Wait Until Element Is Visible    ${multiple_window_heading_locator}
      Wait and click element    ${new_window_click_here_locator}
      Switch Window     title=New Window
      Wait Until Location Contains    ${new_window_location_string}
      ${heading_text}  Get Text    ${new_window_heading_locator}
      Log     ${heading_text}
      Switch Window     title=The Internet
      Wait and click element    ${elemental_selenium_locator}
      Switch Window    title=Home | Elemental Selenium
      ${text}   Get Text    ${elemental_selenium_heading_locator}
      log       ${text}

#  using other keywords related to multiple window like - get window handles

Notification message test
      Wait and click element    ${notification_message_locator}
      Wait Until Location Contains    ${notification_message_location_string}
      Wait Until Element Is Visible    ${notification_message_heading_locator}
      Wait Until Page Contains     Action successful
      Wait Until Keyword Succeeds    10    1    Wait and click element    ${click_here_locator}
      Wait Until Page Contains    Action unsuccesful, please try again

# doubt -- how to find that when i open website then which message comes first successful wala or unsuccessful wala

Shifting content test


# doubt --- what is the use of shifting element and how to test it






       



















          
    










