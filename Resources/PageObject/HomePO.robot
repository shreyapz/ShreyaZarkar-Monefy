*** Settings ***
Library                          AppiumLibrary
Library                          String
Resource                                ../Common/CommonKeywords.robot

*** Variables ***
${OpenNavigation}                          //android.widget.ImageButton[@content-desc="Open navigation"]
${AllAccounts}                             //android.widget.TextView[@text='All accounts']
${Search}                          	id=menu_search
${Transfer}                         id=transfer_menu_item
${Settings}                          //android.widget.TextView[@content-desc="Settings"]
${PieGraph}                          id=piegraph
${Incomebtn}                          id=income_button
${ExpenseBtn}                          id=expense_button
${Balance}                          id=balance_amount
${IncomeAmount}                     id=income_amount_text
${expenseAmount}                    id=expense_amount_text

*** Keywords ***
check the home screen UI
    wait until element is visible               ${OpenNavigation}               15s
    wait until element is visible               ${AllAccounts}               15s
    wait until element is visible               ${Search}               15s
    wait until element is visible               ${Transfer}               15s
    wait until element is visible               ${Settings}               15s
    wait until element is visible               ${PieGraph}               15s
    wait until element is visible               ${Incomebtn}               15s
    wait until element is visible               ${ExpenseBtn}               15s
    wait until element is visible               ${Balance}               15s
    wait until element is visible               ${incomeamount}         10s
    wait until element is visible               ${expenseamount}        10s

click on income button
    click element       ${incomebtn}

click on expense button
    click element       ${expensebtn}

income value from home screen
    wait until element is visible               ${incomeamount}         10s
    ${value}        get text         ${incomeamount}
    ${amount}       get substring     ${value}        1
    ${fvalue}    replace string      ${amount}     ,       .
    [Return]        ${fvalue}

expense value from home screen
    wait until element is visible               ${expenseAmount}         10s
    ${value}        get text         ${expenseAmount}
    ${amount}       get substring     ${value}        1
    ${fvalue}    replace string      ${amount}     ,       .
    [Return]        ${fvalue}

show negative Balance
    [Arguments]     ${Balance}
    wait until element is visible           ${Balance}
    ${text1}     get text    ${Balance}
    should be equal as strings        ${text1}        Balance -€${Balance}

show positive Balance
    [Arguments]     ${Balance}
    wait until element is visible           ${Balance}
    ${text1}     get text    ${Balance}
    should be equal as strings        ${text1}        Balance €${Balance}

click on open navigation
    wait until element is visible      ${OpenNavigation}       10s
    click element       ${OpenNavigation}

click on settings options
    wait until element is visible       ${Settings}
    click element       ${Settings}