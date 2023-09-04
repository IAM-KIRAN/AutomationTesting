*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${OrangeloginUserName}        //input[@name="username"]
${OrangeloginPassword}        //input[@name="password"]
${OrangeBtn_signIn}           //button[@type="submit"]
${browser}                    chrome
${OrangeSiteUrl}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Orangeusername}             Admin
${Orangeuserpassword}               admin12
