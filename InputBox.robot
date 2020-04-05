*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/    chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     OrangeHRM
    ${"Username"}    set variable   id:txtUsername
    element should be visible   ${"Username"}
    element should be enabled   ${"Username"}
#   element should not be visible   ${"Username"}
    input text  ${"Username"}  admin
    sleep   5
    clear element text  ${"Username"}
