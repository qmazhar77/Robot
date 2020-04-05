*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDown and List Boxes
    open browser    ${url}      ${browser}
    maximize browser window

    #Select drop down list
    select from list by label       continents  Australia
    sleep   5
    select from list by index       continents  5
    sleep   3
#   select from list by value       continents     value

    #select list box
    select from list by label       selenium_commands   Switch Commands
    sleep   3
    select from list by label       selenium_commands   WebElement Commands
    sleep   3
    unselect from list by label     selenium_commands   Switch Commands
