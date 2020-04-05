*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Testing Frame
    open browser    https://www.selenium.dev/selenium/docs/api/java/    chrome
    maximize browser window
    select frame    packageListFrame    # id name xpath
    click link  org.openqa.selenium
    unselect frame         This is will unselect the selected frame
    sleep   3
    select frame    packageFrame
    click link  WebDriver
    unselect frame
    sleep   3
    select frame    classFrame
    click link      Index
    unselect frame
    sleep   3
    close browser

