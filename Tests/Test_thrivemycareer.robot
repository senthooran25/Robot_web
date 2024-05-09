*** Settings ***
Library    SeleniumLibrary
## robot -d Results Tests/Test_thrivemycareer.robot
Library    time

*** Variables ***
#${kumar} = kgunaretnam@hotmail.com
#${Sentho} = sri.senthooran@gmail.com
#${senpass} = Tyco1234$
#${kumarpass} = Tyco@1234
*** Test Cases ***
Valid user able to login
    [Documentation]      This is 1st test cases to make sure valid user able to login
    [Tags]    Smoke Testing
    log     Starting the test cases here!!!
    open browser    https://app.thrivemycareer.com/      chrome
    MAXIMIZE BROWSER WINDOW
    input text    id=loginEmail     sri.senthooran@gmail.com
    input text    id=loginPassword    Tyco1234$
    click button    id=loginSubmit
    sleep    10s
    wait until page contains    My Services
    page should contain    Dashboard


Add a task and verify the task is added and displays in the task list.
    click button    xpath=//*[@id="ember32"]/div/div[2]/div/div/div[1]/button
    sleep    5s
    input text    id=title    sentho_one
    input text    id=description     Test note
    click button    css =#modal > div > div > div.modal-body > form > button
    sleep     10s
    wait until page contains   sentho_one

Delelte aded taks and verify the task is not dis playing i the task list.
     sleep              5s
     click element      css=.fa-pencil > path:nth-child(1)
     sleep              3s
     double click element      css=button.btn-danger:nth-child(1)
     sleep              3s
     click element       css=button.btn-danger:nth-child(2)
     sleep              2s
     page should not contain    sentho_one



*** Keywords ***
Scroll Down
    [Arguments]  ${pixels}
    Execute JavaScript  window.scrollBy(0, ${pixels})