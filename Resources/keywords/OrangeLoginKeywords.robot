*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/Variables/OrangeLoginVariables.robot



*** Keywords ***

open my browser
    [Arguments]     ${OrangeSiteUrl}      ${browser}
    Open Browser    ${OrangeSiteUrl}      ${browser}
    Maximize Browser Window


Enter UserName
    [Arguments]     ${OrangeloginUserName}        ${Orangeusername}

    Input Text      ${OrangeloginUserName}        ${Orangeusername}


Enter Password
    [Arguments]     ${OrangeloginPasword}     ${Orangepassword}
    Input Text      ${OrangeloginPasword}     ${Orangepassword}


click signin
    Click Button    ${OrangeBtn_signIn}


verify successfull login
    Title Should Be     OrangeHRM


close my browser
    Close All Browsers

