*** Settings ***
Library     Selenium2Library
Resource    factory.robot


*** Test Cases ***

Assign Leave 
    Login OrangeHRM
    Click Leave
    Choose Assign Leave
    Input Assign Leave Name
    Choose Assign Leave Type
    Input Assign Leave From Date
    Input Assign Leave to Date
    Choose Partial Days
    Choose Duration
    Click Button Assign
    Click OK on Confrim

