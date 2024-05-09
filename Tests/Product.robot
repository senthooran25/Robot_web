*** Settings ***
Documentation    This is basic robot testing suite
Resource    Resources/ProductApp.robot
Resource    Resources/Common.robot
# Run this test :    robot -d Results Tests/Product.robot

Suite Setup     Insert Testing Data
Test Setup    Begin web test
Test Teardown   End web test
Suite Teardown     Insert clean Data

*** Variables ***
${Browers} = chrome
${Start_URL} =

*** Test Cases ***
Able to login Gmail page
    [Documentation]    This is testing hotmail page open and valid login
    [Tags]             ID 0001   Smoke Test

    ProductApp.login as valid user



