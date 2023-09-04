*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/Variables/w3Variables.robot



*** Keywords ***
open my browser
    [Arguments]      ${SiteUrl}      ${browser}
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window


Enter UserName
    [Arguments]     ${InputEmail}        ${Email}

    Input Text      ${InputEmail}          ${Email}


Enter Password
    [Arguments]     ${InputPassword}     ${password}
    Input Text      ${InputPassword}     ${password}


click signup
    Click Button    ${btn_signup}

enter first name
    [Arguments]     ${xxfirstName}       ${firstName}
    Input Text    ${xfirstName}   ${firstName}

    Input Text    ${xlastName}    ${lastName}

click continue
    Click Button    ${btn-continue}

verify successfull login
    Title Should Be    My learning | W3Schools


close my browser
    Close All Browsers

