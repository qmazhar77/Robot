User KeyWords
*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/Resource.robot

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/    chrome
${browser}      chrome     this user defined keywards

*** Test Cases ***
TC1
    ${pageTitle}=    LunchBrowser    ${url}      ${browser}
    log to console  ${pageTitle}
    log     ${pageTitle}
    input text   id:txtUsername      admin
    input text   id:txtPassword      amin123
    close browser
