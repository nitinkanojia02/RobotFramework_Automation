*** Settings ***
Library   SeleniumLibrary
Library   String
Library    Collections

*** Variables ***
${browser}  gc
${key_label}   ENTER

*** Keywords ***
#   Generic Keywords
Wait and click element
    [Arguments]     ${element}
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}

Wait and input text into element
    [Arguments]     ${element_locator}  ${element_input_text}
    Wait Until Element Is Visible    ${element_locator}
    Input Text    ${element_locator}    ${element_input_text}

Get texts from all visible elements
    [Arguments]     ${elements_list_locator}
    ${elements_text_list}   Create List
    ${web_elements}    Get WebElements    ${elements_list_locator}
    FOR    ${element}    IN    @{web_elements}
           ${text}  Get Text    ${element}
           Append To List   ${elements_text_list}   ${text}
    END
    [Return]   ${elements_text_list}