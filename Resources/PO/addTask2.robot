*** Settings ***
Library    SeleniumLibrary

*** Variables ***
*** Test Cases ***

*** Keywords ***
Openning a goole Browser
    open browser    google.com    chrome

Closing a Browser
    close window
