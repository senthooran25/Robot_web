
In Robot Framework, you can use the "Run Keyword If" construct along with the appropriate condition to handle different scenarios. Here's how you can implement it to achieve your requirement:

Let's assume you have two buttons, Button A and Button B, and you want to click Button A if a certain element appears, otherwise, you want to click Button B.

robotframework
Copy code
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://example.com
${Element Locator}    xpath=//your/element/xpath
${Button A Locator}   xpath=//buttonA/xpath
${Button B Locator}   xpath=//buttonB/xpath

*** Test Cases ***
Example Test
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${Element Locator}    timeout=10s
    ${element_present}    Run Keyword And Return Status    Element Should Be Visible    ${Element Locator}
    Run Keyword If    ${element_present}    Click Button    ${Button A Locator}
    Run Keyword Unless    ${element_present}    Click Button    ${Button B Locator}
    Close Browser

*** Keywords ***
Click Button
    [Arguments]    ${button_locator}
    Click Element    ${button_locator}