***Settings*** 
Library             SeleniumLibrary
Suite Setup         Open Browser    ${webURL}      ${Browser} 
Suite Teardown      Close Browser
Test Template       I want to add to cart with valid credentials 

***Variables***
${Browser}      Chrome
${webURL}       https://www.saucedemo.com/

***Keywords***
I want to add to cart with valid credentials
    Click Element   id=add-to-cart-sauce-labs-backpack  

***Test Cases***
Login with valid credentials should successful   