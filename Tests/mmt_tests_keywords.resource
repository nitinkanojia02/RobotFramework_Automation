*** Settings ***
Resource   common_utilities.resource
Library    Collections

*** Variables ***
${mmt_URL}   https://www.makemytrip.com
${mmt_close_icon}   //span[@class='commonModal__close']
${from_span_locator}   //span[text()='From']
${to_span_locator}   //span[text()='To']
${from_input_locator}   //input[@placeholder='From']
${to _input_locator}   //input[@placeholder='To']
${from_input_text}   Lucknow
${to_input_text}   Varanasi
${suggested_from_search_result_locator}   //p[contains(@class,'searchedResult')]/span/span[text()='Lucknow']
${suggested_to_search_result_locator}   //p[contains(@class,'searchedResult')]/span/span[text()='Varanasi']
${calendar_next_page_button_locator}   //span[@class='DayPicker-NavButton DayPicker-NavButton--next']
${calendar_august_text}   //div[text()='August 2025']
${calendar_august_day15}   //div[text()='August 2025']/../following-sibling::div[@class='DayPicker-Body']//p[text()='15']
${search_button}   //a[text()='Search']
${ok_got_it_button}   //button[text()='OKAY, GOT IT!']
${price_elements_list_locator}   //div[@data-test='component-fare']/span

*** Keywords ***
Select day 15 in august month
   ${status}  Run Keyword And Return Status    Wait Until Element Is Visible    ${calendar_august_day15}
#===Home work====
#refactor this code part and change it from if block to for/while loop
   IF    ${status}==${False}
         Click Element   ${calendar_next_page_button_locator}
         ${status}  Run Keyword And Return Status   Wait Until Element Is Visible    ${calendar_august_day15}
         IF    ${status}==${False}
               Click Element   ${calendar_next_page_button_locator}
               Wait Until Element Is Visible    ${calendar_august_day15}
         END
   END
   Click Element   ${calendar_august_day15}

Fetch all prices append to list and print
    ${flight_prices}    Create List
    ${price_web_elements_list}  Get WebElements    ${price_elements_list_locator}
    FOR    ${element}    IN    @{price_web_elements_list}
           ${element_text}   Get Text    ${element}
           Log To Console    ${element_text}
           Append To List    ${flight_prices}     ${element_text}
    END

#===Home work====
#print the lowest flight price
