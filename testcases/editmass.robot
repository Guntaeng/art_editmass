*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Edit Mass)
Resource    ../keywords/common_art.robot
Resource    ../keywords/Menu_editmass.robot
#Resource    ../keywords/Menu_editmass_loop.robot
#Test Template        Article Edit mass 
#Library    DataDriver    file=../resources/edit_mass.csv  dialect=excel    encoding=utf-8
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass
    Get data
    Search by article    10337961
    Click check box all article
    Click button edit field    
    Edit field 1    1    
    Edit field 2
    Edit field 3
    Edit field 4
    Edit field 5
#     Click button Confirm edit field
#     Click button Approve edit field

# Edit mass round 1
#     Get data
#     Search by article    10337963
#     Click check box all article
#     Click button edit field    
#     Edit field 1-5



