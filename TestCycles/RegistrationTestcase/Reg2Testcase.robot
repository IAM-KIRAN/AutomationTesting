*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/keywords/RegistrationKeyword.robot




*** Test Cases ***
Reg2TESTCASE
    open my browser    ${SiteUrl}    ${browser}
    Enter FirstName    ${firstNamePath}    ${firstName}
    Enter LastName    ${lastNamePath}    ${lastName}
    Enter PhoneNumber    ${phoneNumberPath}    ${phoneNumber}

    Select Country
    Enter Email    ${InputEmailPath}    ${Email}
    Enter Password    ${InputPasswordPath}    ${password}
    Checkbox
    Click Register Button
    close browser
