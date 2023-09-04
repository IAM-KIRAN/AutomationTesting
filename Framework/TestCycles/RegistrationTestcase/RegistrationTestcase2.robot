*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/keywords/RegistrationKeyword.robot




*** Test Cases ***
logintest
    open my browser    ${siteUrl}      ${browser}
    Enter UserName    ${InputEmail}      ${Email}
    Enter Password    ${InputPassword}      ${password}
    click signup
    Sleep    5
    enter first name    ${xfirstName}    ${firstName}
    click continue
    Sleep    100

    verify successfull login
    close my browser