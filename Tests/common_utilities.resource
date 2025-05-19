*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Go to any website
    [Arguments]   ${url}
    Go To    ${url}