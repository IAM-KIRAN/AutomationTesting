*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${loginUserName}        //input[@name="username"]
${loginPassword}        //input[@name="password"]
${btn_signIn}           //button[@id='submit']
${browser}              chrome
${siteUrl}              https://practicetestautomation.com/practice-test-login/
${user}                 student
${password}             Password123
${user1}                student
${password1}            Password12
${element_locator}       //h5
