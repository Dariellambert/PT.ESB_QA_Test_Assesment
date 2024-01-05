*** Settings ***
Library     Selenium2Library
Resource    factory.robot


*** Test Cases ***

Cancel Leave 
    Login OrangeHRM
    Click Leave
    Choose My Leave
    Click Available My Leave Detail
    Choose Leave to Cancel