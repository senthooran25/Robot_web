*** Settings ***
Library          SeleniumLibrary
*** Keywords ***
Insert Testing Data
    custom keyword 1
     custom keyword 1
Insert clean Data
    custom keyword 1
     custom keyword 1
login as valid user
    click link        Sign in
    wait until page contains    Email or phone
    input text          name=identifier      jsrikas25@gmail.com
    click button        Next
    sleep         2s
    click link       name = Try again
    sleep         5s
    input text          name="Passwd"        Tyco1234
    click button         Sign in
    sleep

