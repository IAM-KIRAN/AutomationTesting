*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/Variables/Reg2Variables.robot



*** Keywords ***
open my browser
    [Arguments]      ${SiteUrl}      ${browser}
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window


Enter FirstName
    [Arguments]     ${firstNamePath}        ${firstName}

    Input Text      ${firstNamePath}          ${firstName}


Enter LastName
    [Arguments]     ${lastNamePath}     ${lastName}
    Input Text      ${lastNamePath}     ${lastName}

Enter PhoneNumber
    [Arguments]     ${phoneNumberPath}      ${phoneNumber}
    Input Text      ${phoneNumberPath}      ${phoneNumber}


Select Country
    Select From List By Value    id=countries_dropdown_menu    ${selectedCountry}


Enter Email
    [Arguments]     ${InputEmailPath}       ${Email}
    Input Text    ${InputEmailPath}       ${Email}

Enter Password
    [Arguments]     ${InputPasswordPath}        ${password}
    Input Text    ${InputPasswordPath}        ${password}

Checkbox
    Click Element    //input[@id='exampleCheck1']

Click Register Button
    Click Element    //button[@id="registerBtn"]

close browser
    Close All Browsers

