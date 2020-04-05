Close All Browser
*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window
    Close Browser                   close single browser
    close all browsers              close all browser
