*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
Testing Radio Button and Check Boxes
    Open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    # selecting radio butttons
    select radio button     sex     Female
    select radio button     exp     5

    # selecting check box
    select checkbox     BlackTea
    select checkbox     RedTea

    unselect checkbox   BlackTea
    close browser
*** Keywords ***
