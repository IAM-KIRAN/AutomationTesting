*** Settings ***

Library         SeleniumLibrary
Resource        ../../Resources/Page_Objects/AutoSignupPO.robot
Resource        ../../Resources/Variables/AutoSignupVariables.robot

*** Keywords ***

open my browser for auto
    Open Browser    ${SiteUrl}      ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10

Enter name and email
    Input Text    ${InputNamePath}    ${InputName}
    Input Text    ${InputEmailPath}    ${InputEmail}

Press Signup button
    Click Button    ${SignupButton}
    
click radio button
    Click Element    ${TitleRadioButton}
    
Enter Password for auto
    Input Text    ${passwordPath}    ${password}
   
Date
    Select From List by Value    //select[@id='days']    ${dayOfBirth}
    Select From List By Value    //select[@id='months']    ${monthOfBirth}
    Select From List by Value    //select[@id='years']    ${yearOfBirth}
    
Address Information
    Input Text    ${FirstNamePath}    ${firstName}
    Input Text    ${LastNamePath}    ${lastName}
    Input Text    ${companyPath}    ${companyName}
    Input Text    ${addressPath}    ${address}
    Input Text    ${address1Path}    ${address1}
    Input Text    ${statePath}    ${statePath}
    Input Text    ${cityPath}    ${cityName}
    Input Text    ${zipcodePath}    ${zipcode}
    Input Text    ${mobilePath}    ${mobile number}

click Create acc
    Click Button    ${createAccPath}
