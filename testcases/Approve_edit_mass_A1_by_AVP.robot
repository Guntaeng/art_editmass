*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/Menu_approve_edit_mass.robot
Suite Setup    Login dohome and click web art(Approve Edit Mass AVP)


*** Test Cases ***
Approve Edit mass (AVP)
    Condition search A1 Waiting for AVP approval
    Filter By Article    888888
    Click check all box
    Click Approve



