# start your appium serve in terminal by running command: appium
*** Settings ***
Resource    ${EXECDIR}${/}..${/}resources${/}resources.robot
Test Setup    Run Keywords    Open Calculator    Dismiss Welcome Notification
Test Teardown    Close Application

*** Test Cases ***
Valid Sum
    Press    ${ONE}
    Press    ${PLUS}
    Press    ${ONE}
    Press    ${EQUAL}
    Result Should Be    ${TWO}

Valid Sum Glerkin
    [Documentation]    This is documentation for the valid sum Glerkin
    Log    ${TEST DOCUMENTATION}
    
