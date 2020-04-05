*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
#    execute javascript  window.scrollTo(0,5000)
#    scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    execute javascript   window.scrollTo(0,document.body.scrollHeight)  # Scroll to end of the page
    sleep   3
    execute javascript   window.scrollTo(0,-document.body.scrollHeight)  # Scroll to start of the page
