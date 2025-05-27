from selenium.webdriver import ActionChains

herokuapp_website= "https://the-internet.herokuapp.com"
drag_and_drop_locator= "//a[text()='Drag and Drop']"
drag_and_drop_heading_locator= "//h3[text()='Drag and Drop']"
drag_and_drop_location_string= "drag_and_drop"
a_element_locator= "id:column-a"
b_element_locator= "id:column-b"
elements_header= "//div[@class='column']/header"

ab_testing_locator= "//a[text()='A/B Testing']"
ab_testing_heading_locator= "//h3[text()='A/B Test Variation 1']"
ab_testing_location_string= "abtest"
ab_testing_verification_message_locator=  "//p[contains(text(),'Also known as split testing.')]"

add_remove_elements_locator= "//a[text()='Add/Remove Elements']"
add_remove_elements_location_string= "add_remove_elements/"
add_remove_elements_heading_locator= "//h3[text()='Add/Remove Elements']"
add_elements_locator= "//button[text()='Add Element']"
delete_button_locator=  "//button[@class='added-manually']"

basic_auth_website=  "https://admin:admin@the-internet.herokuapp.com/basic_auth"
basic_auth_locator= "//a[text()='Basic Auth']"
basic_auth_location_string=  "basic_auth"
basic_auth_heading_locator=  "//h3[text()='Basic Auth']"
basic_auth_successful_message=  "//p[contains(text(),'Congratulations')]"

checkbox_locator=  "//a[text()='Checkboxes']"
checkbox_location_string=  "checkboxes"
checkbox_heading_locator=  "//h3[text()='Checkboxes']"
checkboxes=  "//input[@type='checkbox']"
first_checkbox_locator=  "//input[@type='checkbox'][1]"
second_checkbox_locator=  "//input[@type='checkbox'][2]"

context_menu_locator=  "//a[text()='Context Menu']"
context_menu_location_string=  "context_menu"
context_menu_heading_locator=  "//h3[text()='Context Menu']"
context_menu_message_locator=  "//p[contains(text(),'Context menu items are custom ')]"
context_menu_display_locator=  "//div[@id='hot-spot']"

disappearing_elements_locator=   "//a[text()='Disappearing Elements']"
disappearing_elements_location_string=   "disappearing_elements"
disappearing_elements_heading_locator=  "//h3[text()='Disappearing Elements']"
all_disappearing_elements_locator=    "//ul/li/a"
gallery_button_locator=   "//a[text()='Gallery']"


dropdown_locator=  "//a[text()='Dropdown']"
dropdown_location_string=  "dropdown"
dropdown_heading=   "//h3[text()='Dropdown List']"
dropdown_list_locator=   "id:dropdown"

forbes_website_url=  "https://www.forbes.com/billionaires/"
forbes_top10_person_locator=  "//table[@class='ListTable_listTable__-N5U5']//tbody/tr[contains(@class,'ListTable_tableRow__P838D')][position() <=10]/td[2]"

dynamic_loading_locator=  "//a[text()='Dynamic Loading']"
dynamic_loading_location_string=  "dynamic_loading"
dynamic_loading_heading=  "//h3[text()='Dynamically Loaded Page Elements']"
dynamic_loading_message=  "//p[contains(text(),'common to see')]"
dynamic_loading_example1_locator=  "//a[text()='Example 1: Element on page that is hidden']"
start_button_locator=  "//button[text()='Start']"
loading_progressbar_locator=  "//img[@src='/img/ajax-loader.gif']"
example1_page_hidden_message=  "//h4[text()='Example 1: Element on page that is hidden']"
hello_world_locator=  "//h4[text()='Hello World!']"

entry_add_locator=  "//a[text()='Entry Ad']"
entry_add_location_string=  "entry_ad"
entry_add_heading_locator=  "//h3[text()='Entry Ad']"
entry_add_display_message_locator= "//p[contains(text(),'Displays ')]"
entry_add_modal_window_locator=   "//h3[text()='This is a modal window']"
entry_add_modal_window_message=  "//p[contains(text(),'commonly used to')]"
entry_add_close_locator=  "//p[text()='Close']"
entry_add_re_enable_locator=  "id:restart-ad"


exit_intent_locator=  "//a[text()='Exit Intent']"
exit_intent_location_string=  "exit_intent"
exit_intent_heading_locator= "//h3[text()='Exit Intent']"
exit_intent_heading_message=  "//p[contains(text(),'Mouse out of the')]"
exit_intent_modal_window=  "//h3[text()='This is a modal window']"
exit_intent_window_message =  "//p[contains(text(),'commonly used to ')]"
exit_intent_close_locator=  "//p[text()='Close']"

file_download_locator=  "//a[text()='File Download']"
file_download_location_string=  "download"
file_download_heading_locator=  "//h3[text()='File Downloader']"
test_upload_link_locator=  "//a[text()='test_upload.txt']"
test_upload_download_path=  "C:/Users/Friends/Downloads/test_upload.txt"

file_upload_locator=  "//a[text()='File Upload']"
file_upload_location_string=  "upload"
file_uploader_heading_locator=  "//h3[text()='File Uploader']"
file_uploader_message=  "//p[contains(text(),'Choose a file')]"
choose_file_locator=  "id:file-upload"
file_upload_path=  "D:/BOOKS/h-apne-hath-ganit.pdf"
upload_locator=  "id:file-submit"


























