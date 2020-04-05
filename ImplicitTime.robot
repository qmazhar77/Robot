*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register
*** Test Cases ***
RegTest
    open browser    ${url}    ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10seconds

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    select radio button     Gender  M
    input text      name:FirstName1  david
    input text      name:LastName   jhon

    close browser
