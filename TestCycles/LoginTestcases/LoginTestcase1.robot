*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/keywords/loginPO.robot


*** Test Cases ***
LoginTest1
    open my browser    ${siteUrl}    ${browser}
    Enter UserName    ${loginUserName}    ${user1}
    Enter Password    ${loginPassword}     ${password1}
    click signin
    Sleep    10
    verify successfull login
    close my browser
