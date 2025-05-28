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
forbes_top10_person_locator=  "(//td[contains(@class,'boldCol') and not(contains(@class,'sticky'))])[position()<=10]"

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

# doubt-- line no 88 custom keyword doubt

file_upload_locator=  "//a[text()='File Upload']"
file_upload_location_string=  "upload"
file_uploader_heading_locator=  "//h3[text()='File Uploader']"
file_uploader_message=  "//p[contains(text(),'Choose a file')]"
choose_file_locator=  "id:file-upload"
file_upload_path=  "D:\BOOKS\A Timeless Spring_ Krishnamurti at Rajghat ( PDFDrive ).pdf"
upload_locator=  "id:file-submit"

form_authentication_locator=  "//a[text()='Form Authentication']"
form_authentication_location_string=  "login"
form_authentication_heading_locator=  "//h2[text()='Login Page']"
username_locator=  "id:username"
username_text=  "tomsmith"
password_locator= "id:password"
password_text=   "SuperSecretPassword!"
login_locator=  "//button/i"
successful_message_locator=  "//h4[contains(text(),'Welcome to the Secure Area')]"
logout_locator=  "//a/i"

frame_locator=  "//a[text()='Frames']"
go_to_url=  "https://the-internet.herokuapp.com/frames"
frame_location_string=  "nested_frames"
frame_heading_locator=  "//h3[text()='Frames']"
nested_frames_locator= "//a[text()='Nested Frames']"
nested_frames_location_string=  "nested_frames"
top_frame_locator= "name:frame-top"
top_left_frame_locator=  "name:frame-left"
left_text_locator=  "//body[contains(text(),'LEFT')]"
top_middle_frame_locator=  "name:frame-middle"
middile_text_locator=  "//div[text()='MIDDLE']"
top_right_frame_locator=  "name:frame-right"
right_text_locator=  "//body[contains(text(),'RIGHT')]"
bottom_frame_locator=  "name:frame-bottom"
bottom_text_locator=  "//body[contains(text(),'BOTTOM')]"
iframe_locator= "//a[text()='iFrame']"
iframe_location_string=  "iframe"
iframe_heading_locator=  "//h3[contains(text(),'An iFrame containing')]"
iframe_cancel_button_locator=  "//div[@aria-label='Close']/*[name()='svg']"
iframe_text_locator=  "//p[text()='Your content goes here.']"
inside_iframe_locator=   "id:mce_0_ifr"

horizontal_slider_locator=  "//a[text()='Horizontal Slider']"
horizontal_slider_location_string=  "horizontal_slider"
horizontal_slider_heading_locator= "//h3[text()='Horizontal Slider']"
slider_locator=  "//input[@type='range']"

hovers_locator=  "//a[text()='Hovers']"
hovers_location_string=  "hovers"
hovers_heading_locator=  "//h3"
hovers_message_locator=  "//p[contains(text(),'Hover over the')]"
user1_img_locator=  "(//div[@class='figure']/img)[1]"
name_user1_locator=  "//h5[text()='name: user1']"
user2_img_locator=  "(//div[@class='figure']/img)[2]"
name_user2_locator=  "//h5[text()='name: user2']"
user3_img_locator=  "(//div[@class='figure']/img)[3]"
name_user3_locator=  "//h5[text()='name: user3']"

jquery_locator= "//a[text()='JQuery UI Menus']"
jquery_location_string=  "jqueryui/menu"
jquery_heading_locator=  "//h3[text()='JQueryUI - Menu']"
enabled_locator= "//a[text()='Enabled']"
download_locator= "//a[text()='Downloads']"
excel_file_locator="//a[text()='Excel']"
excel_file_path=  "C:/Users/Friends/Downloads/*.xls"

javascript_alert_locator=  "//a[text()='JavaScript Alerts']"
javascript_alert_location_string=  "javascript_alerts"
javascript_alert_heading_locator=  "//h3[text()='JavaScript Alerts']"
js_alert_locator=  "//button[text()='Click for JS Alert']"
js_confirm_locator=  "//button[text()='Click for JS Confirm']"
js_prompt_locator=  "//button[text()='Click for JS Prompt']"
alert_successful_locator=  "//p[text()='You successfully clicked an alert']"
alert_cancel_locator=  "//p[text()='You clicked: Cancel']"
prompt_text_locator=  "//p[contains(text(),'You entered: Dekh khud ko gaur se')]"

key_presses_locator=  "//a[text()='Key Presses']"
key_presses_location_string=  "key_presses"
key_presses_heading_locator=  "//h3[text()='Key Presses']"
key_presses_input_locator=  "//input[@id='target']"

multiple_window_locator=  "//a[text()='Multiple Windows']"
multiple_window_locator_string=  "windows"
multiple_window_heading_locator=  "//h3[contains(text(),'Opening ')]"
new_window_click_here_locator=  "//a[text()='Click Here']"
new_window_location_string=  "new"
new_window_heading_locator=  "//h3"
elemental_selenium_locator=  "//a[text()='Elemental Selenium']"
elemental_selenium_heading_locator=  "//h1[text()='Elemental Selenium']"

notification_message_locator=  "//a[text()='Notification Messages']"
notification_message_location_string=   "notification_message_rendered"
notification_message_heading_locator=   "//h3[text()='Notification Message']"
click_here_locator=  "//a[text()='Click here']"

shifting_content_locator=  "//a[text()='Shifting Content']"
shifting_content_location_string=  "shifting_content"
shifting_content_heading_locator=  "//h3[text()='Shifting Content']"
example1_locator=  "//a[text()='Example 1: Menu Element']"
example2_locator=  "//a[text()='Example 2: An image']"
example3_locator=  "//a[text()='Example 3: List']"
























