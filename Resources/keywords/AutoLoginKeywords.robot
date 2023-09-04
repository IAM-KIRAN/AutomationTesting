*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/AutoSignupVariables.robot
Resource        ../Page_Objects/AutoLoginPO.robot

*** Keywords ***

open browser for auto login
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10

Enter email and password
    Input Text    ${emailAddressPath}    ${InputEmail}
    Input Text    ${passwordPath}    ${password}
    
click login
    Click Element    ${loginButtonPath}