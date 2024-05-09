*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${url}    about:blank
${Brower}    chrome
${webPage}    https://app.thrivemycareer.com/
${email}
${password}
${submitBtn}
${myService}
@{list_of_varaiable}

*** Keywords ***
Scroll Down
    [Arguments]  ${pixels}
    Execute JavaScript  window.scrollBy(0, ${pixels}

Open a Web Page And Maximize
    open browser    ${url}      ${Brower}
    MAXIMIZE BROWSER WINDOW
Open The Thrive Web Page
    go to   ${webPage}}
    sleep    9s

Login as Valid User

    input text    id=loginEmail     sri.senthooran@gmail.com
    input text    id=loginPassword    Tyco1234$
    click button    id=loginSubmit

Verified Home Page Loaded
    wait until page contains    My Services
    page should contain    Dashboard

Add a New Task
    sleep    9s
    click button    xpath=//*[@id="ember32"]/div/div[2]/div/div/div[1]/button
    sleep    5s
    input text    id=title    sentho_one
    input text    id=description     Test note
    click button    css =#modal > div > div > div.modal-body > form > button

Verified New Task Added
    wait until page contains   sentho_one

Close the Web Brower
    sleep     9s
    wait until page contains   sentho_one