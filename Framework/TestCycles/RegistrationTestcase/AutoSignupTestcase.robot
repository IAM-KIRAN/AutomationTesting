*** Settings ***
Library         SeleniumLibrary
Resource        ../../Resources/keywords/AutoSignupKeywords.robot
Resource        ../../Resources/keywords/RegistrationKeyword.robot

*** Test Cases ***

Auto Signup
    open my browser for auto
    Enter name and email
    Press Signup button
    Sleep    5
    click radio button
    Enter Password for auto
    Date
    Address Information
    click Create acc
    
    Close All Browsers