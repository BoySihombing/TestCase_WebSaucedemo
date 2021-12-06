***Settings*** 
Library             SeleniumLibrary
Suite Setup         Open Browser    ${webURL}      ${Browser} 
Suite Teardown      Close Browser
Library             DataDriver      validcredentials.csv      sheet_name=Sheet1
Test Template       I want to login with valid credentials 

***Variables***
${Browser}      Chrome
${webURL}       https://www.saucedemo.com/

***Keywords***
I want to login with valid credentials
    [Arguments]     ${username}         ${password}
    Input Text      id=user-name        ${username}
    Input Text      id=password         ${password}
    Click Element   id=login-button                 
    #Capture Page Screenshot
    #Page Should contain username and password do not match

#Page Should redirected to dashboard

***Test Cases***
Login with valid credentials should successful        ${username}      ${password}
    should successful redirected to dashboard