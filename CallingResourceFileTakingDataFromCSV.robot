*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Library     DataDriver  ../TestData/LoginData1.csv

Suite Setup     Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid Login
*** Test Cases ***
LoginTestwithExcel using    ${username}     ${password}


*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input Password  ${password}
    Click login button
    Error message should be visible

