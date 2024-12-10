*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Edit Mass)
Resource    ../keywords/common_art.robot
Resource    ../keywords/Menu_editmass_v3.robot
#Resource    ../keywords/Menu_editmass_loop.robot
#Test Template        Article Edit mass 
#Library    DataDriver    file=../resources/edit_mass.csv  dialect=excel    encoding=utf-8
Test Teardown    Refresh page


*** Test Cases ***
Article Edit mass round 1
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    10337950
    Click check box all article
    Click button edit field    
    Edit field 1    Run 1
    Edit field 2    Run 1
    Edit field 3    Run 1
    Edit field 4    Run 1
    Edit field 5    Run 1
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 2
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    19999124
    Click check box all article
    Click button edit field    
    Edit field 1    Run 2
    Edit field 2    Run 2
    Edit field 3    Run 2
    Edit field 4    Run 2
    Edit field 5    Run 2
    Click button Confirm edit field
    Click button Approve edit field

Article Edit mass round 3
    Process CSV Rows    ${CSV_PATH_B2C}
    Search by article    81000075
    Click check box all article
    Click button edit field    
    Edit field 1    Run 3
    Edit field 2    Run 3
    Edit field 3    Run 3
    Edit field 4    Run 3
    # Edit field 5    Run 3
    Click button Confirm edit field
    Click button Approve edit field

