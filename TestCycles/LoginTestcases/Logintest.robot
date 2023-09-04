*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/keywords/loginPO.robot




*** Test Cases ***
logintest

    open my browser     ${siteUrl}      ${browser}
    Enter UserName    ${loginUserName}      ${user}
    Enter Password    ${loginPassword}      ${password}
    click signin
    Sleep    5

    ${login_success} =    Run Keyword And Ignore Error    Element Should Not Be Visible    //h5
    Run Keyword If    not ${login_success}    Log    Error: Invalid credentials message displayed
    ...    AND    Fail    Invalid credentials message displayed
    close my browser