*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser    https://www.google.com/     chrome
    ${Loc}=     get location
    log to console  ${Loc}

    go to   https://www.bing.com/?toWww=1&redig=964B525C24EC401DBA768FB17E0D8948
     ${Loc}=     get location
    log to console  ${Loc}

    go back
     ${Loc}=     get location
    log to console  ${Loc}
