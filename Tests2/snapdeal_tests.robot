*** Settings ***
Resource    snapdeal_test_keyword.resource
Test Setup  Run Keywords    Open Browser   ${None}     ${browser}    AND    Maximize Browser Window
Test Teardown   Close Browser


*** Test Cases ***
Open google chrome and navigate to snapdeal
         [Tags]  TCSNAP-01
         Go to snapdeal
         Enter Search Text in the Search Bar
         Fetch product price and print in console



