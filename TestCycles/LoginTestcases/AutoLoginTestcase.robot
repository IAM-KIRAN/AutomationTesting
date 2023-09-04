*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Framework/Resources/keywords/AutoLoginKeywords.robot



*** Test Cases ***
auto login
    open browser for auto login
    Enter email and password
    click login
