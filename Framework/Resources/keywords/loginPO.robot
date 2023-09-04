*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/Variables/xpath.robot


*** Keywords ***
open my browser
    [Arguments]     ${siteUrl}      ${browser}
    Open Browser    ${siteUrl}      ${browser}
    Maximize Browser Window
    
    
Enter UserName
    [Arguments]     ${loginUserName}        ${username}

    Input Text      ${loginUserName}        ${username}


Enter Password
    [Arguments]     ${loginPasword}     ${password}
    Input Text      ${loginPasword}     ${password}


click signin
    Click Button    ${btn_signIn}

scroll till
    Scroll Element Into View    //h5



verify successfull login
    Title Should Be    Logged In Successfully | Practice Test Automation


close my browser
    Close All Browsers

