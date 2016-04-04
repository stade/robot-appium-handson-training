*** Settings ***
Library    AppiumLibrary

*** Variables ***
${UDID}    015d4b33c2341811
${ONE}    id=com.android2.calculator3:id/digit1
${PLUS}   id=com.android2.calculator3:id/plus
${EQUAL}    id=com.android2.calculator3:id/equal
${LEFT_PARENTHESIS}    id=com.android2.calculator3:id/leftParen
${RIGHT_PARENTHESIS}    id=com.android2.calculator3:id/rightParen
${MULTIPLY}    id=com.android2.calculator3:id/mul
${MINUS}    id=com.android2.calculator3:id/minus
${DIVIDE}   id=com.android2.calculator3:id/div
${ERROR}    Error
${TWO}   2
${PLATFORM}   Android
${URL}    http://localhost:4723/wd/hub

*** Keywords ***
Open Calculator
    Open Application
    ...    ${URL}
    ...    platformName=${PLATFORM}
    ...    deviceName=${UDID}
    ...    app=${CURDIR}/../apk/com.android2.calculator3_63.apk
    ...    udid=${UDID}

Dismiss Welcome Notification
    Click Element    id=com.android2.calculator3:id/cling_dismiss

Result Should Be
    [Arguments]    ${result}
    Page Should Contain Element   xpath=//android.widget.EditText[@text='${result}']

Press
    [Arguments]   ${element}
    Click Element    ${element}
