*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register
*** Test Cases ***
RegTest
    open browser    ${url}    ${browser}
    maximize browser window
    ${time}=    set selenium timeout
    log to console    ${time}

    Set selenium timeout     10seconds
    wait until page contains   Regestration     # defualt 5 sec
    select radio button     Gender  M
    input text      name:FirstName  david
    input text      name:LastName   jhon
    input text      name:Email      abd@gmail.com
    input text      name:Password   davidjohn
    input text      name:ConfirmPassword    davidjohn
    close browser
