*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/common_art.robot

*** Variables ***
${url}    https://www.google.co.th/?hl=th




*** Keywords ***


*** Test Cases ***
search dohome
    Open Browser    ${url}    chrome
    Sleep    1s
    Maximize Browser Window
    Sleep    1s

    Click Element    id=search
    Sleep    10s


    Click Element with Delay    //textarea[@name='q']



    Input Text    //textarea[@name='q']    dohome
    Press Key    //textarea[@name='q']    \\13    #\\13 แทน enter
    Wait Until Element Is Visible    //a[@href="https://www.dohome.co.th/"]
    Click Element    //a[@href="https://www.dohome.co.th/"]
    Sleep    3s

