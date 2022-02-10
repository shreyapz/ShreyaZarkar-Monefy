*** Settings ***
Library                    AppiumLibrary
Library                    String
Resource                   ../Resources/PageObject/HomePO.robot
Library                   NumberFormat.py

*** Keywords ***
check the home page
    check the home screen UI


get the income value from home screen
    ${incomevalue}      income value from home screen
    [Return]        ${incomevalue}


get the expense value from home screen
    ${Expensevalue}      expense value from home screen
    [Return]       ${Expensevalue}

check the income added on Home screen
    [Arguments]         ${OldValue}     ${newValue}
    ${oldvalue1}    replace string      ${OldValue}     ,       .
    ${num1}     convert_str_to_float  ${OldValue1}
    ${num2}     convert_str_to_float  ${newValue}
    ${result1} =	Evaluate	${num1} + ${num2}
    ${result2}  convert_str_to_float    ${result1}
    ${incomevalue}      income value from home screen
    ${num3}     convert_str_to_float  ${incomevalue}
    should be equal     ${result2}     ${num3}

check the expense added on Home screen
    [Arguments]         ${OldValue}     ${newValue}
    ${oldvalue1}    replace string      ${OldValue}     ,       .
    ${num1}     convert_str_to_float  ${OldValue1}
    ${num2}     convert_str_to_float  ${newValue}
    ${result1} =	Evaluate	${num1} + ${num2}
    ${result2}  convert_str_to_float    ${result1}
    ${incomevalue}      expense value from home screen
    ${num3}     convert_str_to_float  ${incomevalue}
    should be equal     ${result2}     ${num3}

Verify Balance amount is calculated correctly
    [Arguments]     ${income}   ${expense}
    ${Intincome}    replace string      ${income}     ,       .
    ${IntExpense}    replace string      ${expense}     ,       .
    ${FloatIncome}      convert_str_to_float        ${Intincome}
    ${FloatExpense}      convert_str_to_float        ${IntExpense}
    ${Result}=	Evaluate	${FloatIncome} - ${FloatExpense}
    ${status} =   Evaluate  0 < ${Result}
    ${Balance}   convert_float_to_string     ${Result}
    run keyword if    ${status}=='True'     show negative Balance       ${Balance}
    run keyword if    ${status}=='false'     show positive Balance      ${Balance}


