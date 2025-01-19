*** Settings ***
Library           Collections
Library           OperatingSystem
Library           SeleniumLibrary
Library           String
Library           BuiltIn

*** Variables ***
${CSV_FILE}       path/to/your_file.csv

*** Test Cases ***
Edit Fields from CSV
    ${rows}=    Read CSV Rows    ${CSV_FILE}
    FOR    ${row}    IN    @{rows}
        Log To Console    Editing Field: ${row}[field]
        Edit Field    ${row}[round]    ${row}[field]    ${row}[value]    ${row}[uuid]    ${row}[type_field]
    END

*** Keywords ***
Read CSV Rows
    [Arguments]    ${file_path}
    ${csv_content}=    Get File Lines    ${file_path}
    ${header}=    Evaluate    ${csv_content[0].split(",")}
    ${data_rows}=    Evaluate    [row.split(",") for row in ${csv_content[1:]}]
    ${rows}=    Create List
    FOR    ${row}    IN    @{data_rows}
        ${dict}=    Create Dictionary
        FOR    ${i}    IN RANGE    0    ${header.__len__()}
            Set To Dictionary    ${dict}    ${header[${i}]}    ${row[${i}]}
        END
        Append To List    ${rows}    ${dict}
    END
    [Return]    ${rows}

Edit Field
    [Arguments]    ${round}    ${field}    ${value}    ${uuid}    ${type_field}
    Log To Console    Round: ${round}, Field: ${field}, Value: ${value}, UUID: ${uuid}, Type: ${type_field}
    # Add logic for handling each field type below
    Run Keyword If    '${type_field}' == 'drop down'    Select From Dropdown    id=${uuid}    ${value}
    Run Keyword If    '${type_field}' == 'check box'    Click Element    id=${uuid}
    # Handle other field types if needed
