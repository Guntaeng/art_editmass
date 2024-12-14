*** Settings ***
Library    SeleniumLibrary
Library    ../Create_Article_automate/resources/csv_ready.py
Library    ../Create_Article_automate/resources/csv_ready_v2.py
Library    CSVLibrary
Library    BuiltIn
Library    OperatingSystem
Library    Collections
Library    String
Library    DebugLibrary

*** Variables ***
${CSV_PATH_B2C(A2)}    resources/edit_mass_A2.csv  
${CSV_PATH_NOT_REQ(A2)}    resources/editmass_no_req_A2.csv
${CSV_PATH_B2C(A3)}    resources/edit_mass_A3.csv  
${CSV_PATH_NOT_REQ(A3)}    resources/editmass_no_req_A3.csv


*** Keywords ***
Process CSV Rows
    [Arguments]    ${path}
    ${result}=    Read Csv    ${path}
    # กำหนดค่าตัวแปร ${x_rows} เป็น list ที่อ่านจาก CSV
    ${x_rows}=    Set Variable    ${result}
    # เริ่มต้นที่ index 1
    ${index}=    Set Variable    1
    # วนลูปข้อมูลใน ${x_rows}
    FOR    ${row}    IN    @{x_rows}
        # ดึงค่าจาก dictionary โดยใช้คีย์ที่มี ${}
        ${level_approve}=    Get From Dictionary    ${row}    level_approve    default=Not Found
        ${round}=            Get From Dictionary    ${row}    round    default=Not Found
        ${field}=            Get From Dictionary    ${row}    field    default=Not Found
        ${value}=            Get From Dictionary    ${row}    value    default=Not Found
        ${uuid}=             Get From Dictionary    ${row}    uuid    default=Not Found
        # เซ็ตตัวแปรตามลำดับที่ได้จาก index
        Set Suite Variable    ${level_approve_${index}}    ${level_approve}
        Set Suite Variable    ${round_${index}}           ${round}
        Set Suite Variable    ${field_${index}}           ${field}
        Set Suite Variable    ${value_${index}}           ${value}
        Set Suite Variable    ${uuid_${index}}            ${uuid}
        # เพิ่มค่า index และวนกลับไป 1 เมื่อถึง 5
        ${index}=    Evaluate    (${index}) + 1
    END


