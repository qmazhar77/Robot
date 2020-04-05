*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window

    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}

    ${Linkitems}    create list

    : FOR   ${i}    IN Range    1   ${AllLinksCount}+1
    \   ${linkText}=   get text    xpath:(//a)[${i}]
    \   log to console  ${linkText}

