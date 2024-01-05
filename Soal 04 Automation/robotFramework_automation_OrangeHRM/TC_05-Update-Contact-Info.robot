*** Settings ***
Library     Selenium2Library
Resource    factory.robot


*** Test Cases ***

Update Contact Info
    Login OrangeHRM
    Choose My Info
    Click Contact Details
    Input Address
    Input Contact Information
    Click Save on Contact Details