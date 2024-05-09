*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    ExtendedSelenium2Library
# robot -d Results Tests/clickbutton.robot

*** Variables ***
${URL}    https://app.thrivemycareer.com/dashboard
${Add_task_btn}    xpath=//*[@id="ember32"]/div/div[2]/div/div/div[1]/button
${Plus_task_btn}   css=.btn-sm
${Bell_Imge}     css=.card-image-s

*** Test Cases ***

Scroll Down After Opening Window
    Open Browser    ${URL}    browser=chrome
    Maximize Browser Window
    sleep    2s
    input text    id=loginEmail     sri.senthooran@gmail.com
    input text    id=loginPassword    Tyco1234$
    click button    id=loginSubmit
    sleep    5s
    scroll element into view     css=.user-quick-stats > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h3:nth-child(1)

Add a task and verify the task is added and displays in the task list.
    sleep    5s
    ${status_preset}    run keyword and return status    element should be visible    ${Bell_Imge}
    log    ${status_preset}
#    run keyword if    ${status_preset}

    IF    ${status_preset} == True
    click button     ${Add_task_btn}
    ELSE
    click button     ${Plus_task_btn}
    END
    sleep    5s
    input text    id=title    sentho_one
    input text    id=description     Test note
    click button    css =#modal > div > div > div.modal-body > form > button
    sleep     5s
    wait until page contains   sentho_one
