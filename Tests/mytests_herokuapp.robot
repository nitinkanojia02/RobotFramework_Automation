*** Settings ***
Resource    common_utilities.resource
Variables   herokuapp_tests_variables.py
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
    Open Browser     ${basic_auth_website}      chrome
    Wait Until Location Contains        ${basic_auth_location_string}
    Wait Until Element Is Visible       ${basic_auth_heading_locator}
    Wait Until Page Contains    Congratulations! You must have the proper credentials
    ${basic_auth_mesage}    Get Text    ${basic_auth_successful_message}
    Log To Console     ${basic_auth_mesage}

chcekbox testing
   Set Selenium Speed     0.5
   Wait and click element       ${checkbox_locator}
   Wait Until Location Contains     ${checkbox_location_string}
   Wait Until Element Is Visible        ${checkbox_heading_locator}
   Page Should Contain Checkbox     ${checkboxes}
   Checkbox Should Not Be Selected     ${first_checkbox_locator}
   Select Checkbox     ${first_checkbox_locator}
   Checkbox Should Be Selected     ${second_checkbox_locator}
   Unselect Checkbox     ${second_checkbox_locator}

# ise logic ke sath ek baar bhaiya se puchhna hai

context_menu_rightclick_verification
   Set Selenium Speed      0.5
   Wait and click element       ${context_menu_locator}
   Wait Until Location Contains        ${context_menu_location_string}
   Wait Until Element Is Visible      ${context_menu_heading_locator}
   Wait Until Element Is Visible     ${context_menu_message_locator}
   Open Context Menu    ${context_menu_display_locator}
   Alert Should Be Present     You selected a context menu

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


dropdown_verfication
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


          
    










