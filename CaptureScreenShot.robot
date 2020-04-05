*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    http://testautomationpractice.blogspot.com/     chrome
    click element   xpath://*[@id="HTML9"]/div[1]/button    # open alert window
    sleep   3
    #handle alert    accept     # close alert window with OK button
    #handle alert    dismiss    # close alert window with cancel button
    #handle alert    leave      # leave the alert window for the some time
    alert should be present    Press a button!      # Check the text appear or not on alert window then close it automatic
