*** Settings ***
Resource    /Users/senthooran/PycharmProjects/RobotGit/Resources/Common.robot
## robot -d Results Tests/AddTasks.robot
*** Variables ***

*** Test Cases ***
Verify that valid user able to add a task.
    [Documentation]      This is 1st test cases to make sure valid user able to login
    [Tags]    Smoke Testing
    log     Starting the test cases here!!!
    Common.Open a Web Page And Maximize
    Common.Open The Thrive Web Page
    Common.Login as Valid User
    Common.Verified Home Page Loaded
    Common.Add a New Task
    Common.Close the Web Brower
    Common.Verified New Task Added
    log to console    Opening main now





