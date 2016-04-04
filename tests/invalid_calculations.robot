# start your appium serve in terminal by running command: appium
*** Settings ***
Resource    ${EXECDIR}${/}..${/}resources${/}resources.robot
Test Template    Invalid Calculation
Suite Setup     Run Keywords    Open Calculator    Dismiss Welcome Notification
Suite Teardown    Close Application

*** Test Cases ***
Invalid Sum With Parenthesis    ${LEFT_PARENTHESIS}     ${PLUS}     ${RIGHT_PARENTHESIS}
Invalid Multiply With Parenthesis    ${LEFT_PARENTHESIS}     ${MULTIPLY}     ${RIGHT_PARENTHESIS}
Invalid Difference With Parenthesis   ${LEFT_PARENTHESIS}     ${MINUS}     ${RIGHT_PARENTHESIS}
Invalid Divide With Parenthesis   ${LEFT_PARENTHESIS}     ${DIVIDE}     ${RIGHT_PARENTHESIS}

*** Keywords ***
Invalid Calculation
    [Arguments]    ${first_value}    ${operator}    ${second_value}
    Press    ${first_value}
    Press    ${operator}
    Press    ${second_value}
    Press    ${EQUAL}
    Result Should Be    ${ERROR}
