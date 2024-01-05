*** Settings ***
Library     Selenium2Library
Resource    factory.robot


*** Test Cases ***

Update Personal Info
    Login OrangeHRM
    Choose My Info
    Enter Personal Name and Nickname
    Enter Nationality
    Click Save on Personal Info