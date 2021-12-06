***Settings***
Library             SeleniumLibrary
Suite Setup         Open Browser    ${webURL}      ${Browser} 
Suite Teardown      Close Browser
Library             DataDriver      credentials.csv      sheet_name=Sheet1
Test Template       I want to login with invalid credentials 

***Variables***
${Browser}      Chrome
${webURL}       https://www.saucedemo.com/

***Keywords***
I want to login with invalid credentials
    [Arguments]     ${username}         ${password}
    Input Text      id=user-name        ${username}
    Input Text      id=password         ${password}
    Click Element   id=login-button                 
    Page Should Contain     Epic sadface: Username and password do not match any user in this service

***Test Cases***
Login with invalid credentials should failed with CVS failed        ${username}      ${password}
    Should failed and showing error