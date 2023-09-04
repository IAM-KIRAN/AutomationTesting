*** Settings ***
Library         SeleniumLibrary
Resource        C:/Users/KiranKumarBR-Int-215/Desktop/Automation/venv/Framework/Resources/keywords/OrangeLoginKeywords.robot


*** Test Cases ***
LoginTest1

    open my browser    ${OrangeSiteUrl}    ${browser}
    Set Browser Implicit Wait    10
    Set Selenium Speed    1
    Enter UserName    ${OrangeloginUserName}    ${Orangeusername}
    Enter Password    ${OrangeloginPassword}     ${OrangeuserPassword}
    click signin
    Sleep    10
    ${login_success} =    Run Keyword And Ignore Error    Element Should Not Be Visible    //*[text()="Invalid credentials"]
    Run Keyword If    not ${login_success}    Log    Error: Invalid credentials message displayed
    ...    AND    Fail    Invalid credentials message displayed
    ${title} =    Get Title
    Should Be Equal    ${title}    OrangeHRM




    close my browser
