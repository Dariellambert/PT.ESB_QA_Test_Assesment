*** Settings ***
Library     Selenium2Library
Resource    factory.robot

*** Test Cases ***
Login OrangeHRM
    Load OrangeHRM
    Type Email    Admin
    Type Password    admin123
    Click Login

Logout OrangeHRM
    Click Profile Icon
    Choose Logout

