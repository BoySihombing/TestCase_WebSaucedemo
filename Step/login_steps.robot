***Settings***
Resource            ../Resources/login_pages.robot
Suite Setup         Open Browser    ${webURL}      ${Browser} 
Suite Teardown      Close Browser
Library             DataDriver      validcredentials.csv      sheet_name=Sheet1

***Test Cases***
Login with valid credentials should successful        ${username}      ${password}