*** Settings ***
Library     Selenium2Library
Resource    factory.robot


*** Test Cases ***

Update Contact Info
    Login OrangeHRM
    Click Admin
    Click Job then Job Title
    Click on Add in Job Title
    Input Job Title and Description
    Click Save on Adding job Title