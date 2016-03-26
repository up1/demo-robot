*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${GOOGLE URL}    http://www.google.com

*** Testcases ***
Search
    เข้าไป google
    ค้นหาคำว่าน้องเบียร์
    ต้องเจอข้อมูลน้องเบียร์

*** Keywords ***
เข้าไป google
    Open Browser    ${GOOGLE URL}    gc

ค้นหาคำว่าน้องเบียร์
    Input Text    q    น้องเบียร์
    Click Button    btnG

ต้องเจอข้อมูลน้องเบียร์
    Wait Until Page Contains    เซ็กซี่ซ่อนรูป
    ${nnumber of result}=    Get Text    resultStats
    Log to console    ${nnumber of result}














