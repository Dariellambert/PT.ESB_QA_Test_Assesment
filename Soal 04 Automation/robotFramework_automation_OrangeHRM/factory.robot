*** Settings ***
Library    Selenium2Library
Library    XML

*** Keywords ***
Load OrangeHRM
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2

Type Email
    [Arguments]    ${Username}
    Input Text    name=username    ${Username}

Type Password
    [Arguments]    ${Password}
    Input Text    name=password    ${Password}

Click Login
    Click Element    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button  
    Sleep    5

Login OrangeHRM
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Element    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button  
    Sleep    5


Click Profile Icon
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/i
    Sleep    1

Choose Logout
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a

Click Leave
    Click Element    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a
    Sleep    2

Choose Assign Leave
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[7]/a
    Sleep    1

Input Assign Leave Name
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div/div/div[2]/div/div/input    a
    Sleep    4
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div/div/div[2]/div/div[2]/div[1]
    Sleep    2

Choose Assign Leave Type
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/div/div/div[1]
    Sleep    2
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/div/div[2]/div[2]
    Sleep    1

Input Assign Leave From Date
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div[1]/input
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div[2]/div/div[3]/div[2]
    Sleep    2

Input Assign Leave to Date
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[2]/div/div[2]/div/div/i
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[2]/div/div[2]/div/div[2]/div/div[3]/div[25]/div

Choose Partial Days
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[4]/div/div[1]/div/div[2]/div/div/div[1]
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[4]/div/div[1]/div/div[2]/div/div[2]/div[2]

Choose Duration
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[4]/div/div[2]/div/div[2]/div/div[1]
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[4]/div/div[2]/div/div[2]/div/div[2]/div[2]

Click Button Assign
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[6]/button
    Sleep    3

Click OK on Confrim
    Click Element    //*[@id="app"]/div[3]/div/div/div/div[3]/button[2]
    Sleep    2

Choose My Leave
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[2]/a
    Sleep    2

Click Available My Leave Detail
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div[2]/div/div/div[9]/div/li/button
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[2]/div/div[2]/div/div/div[9]/div/li/ul/li[2]
    Sleep    3

Choose Leave to Cancel
    Click Element   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div[4]/div/div[2]/div[23]/div/div[7]/div/button
    Sleep    1

Choose My Info
    Click Element    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[6]/a
    Sleep    4

Enter Personal Name and Nickname
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input
    Sleep    1
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input    James
    Clear Element Text   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[2]/div[2]/Input
    Sleep    1
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[2]/div[2]/Input    Norigton
    Clear Element Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[3]/div[2]/input
    Sleep    1
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[3]/div[2]/input    Worth
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[2]/div/div/div[2]/input    James

Enter Nationality
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[1]/div[1]/div/div[2]/div
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div[1]/div[1]/div/div[2]/div/div[2]/div[5]/span

Click Save on Personal Info
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[5]/button
    Sleep    2

Click Contact Details
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[1]/div[2]/div[2]/a
    Sleep    2

Input Address
    Input Text   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[1]/div/div[2]/input    Sesame Street
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[2]/div/div[2]/input    number 360 
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[3]/div/div[2]/input    Columbus
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[4]/div/div[2]/input    Ohio
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[5]/div/div[2]/input    88654
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[6]/div/div[2]/div/div/div[1]
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div/div[6]/div/div[2]/div/div[2]/div[227]/span

Input Contact Information
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[2]/div/div[2]/div/div[2]/input    +01-6349-123
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[3]/div/div[2]/div/div[2]/input    james.paul@mail.com

Click Save on Contact Details
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[4]/button
    Sleep    2

Click Admin
    Click Element    //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
    Sleep    2

Click Job then Job Title
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[2]/span
    Sleep    1
    Click Element    //*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[2]/ul/li[1]/a
    Sleep    2

Click on Add in Job Title
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div[1]/div/button
    Sleep    2

Input Job Title and Description
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/input    IT Consultant
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/textarea    Consult for IT Purposes

Click Save on Adding job Title
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[5]/button[2]
    Sleep    2

