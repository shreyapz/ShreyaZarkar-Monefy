*** Settings ***
Library                          AppiumLibrary
Library                          String
Resource                                ../Common/Variable.robot

*** Variables ***
${AmountText}                           id=amount_text
${KeyboardClear}                              id=buttonKeyboardClear
${NoteText}                         id=textViewNote
${KeyboardAction}                       id=keyboard_action_button

*** Keywords ***
Verify the items on Amount screen
   wait until element is visible        ${AmountText}       10s
    wait until element is visible          ${KeyboardClear}     10s
    wait until element is visible     ${NoteText}       10s
    wait until element is visible     ${KeyboardAction}       10s

verify keyboard items
    wait until element is visible           ${1}        10s
    wait until element is visible           ${2}        10s
    wait until element is visible           ${3}        10s
    wait until element is visible           ${4}        10s
    wait until element is visible           ${5}        10s
    wait until element is visible           ${6}        10s
    wait until element is visible           ${7}        10s
    wait until element is visible           ${8}        10s
    wait until element is visible           ${9}        10s
    wait until element is visible           ${0}        10s
    wait until element is visible           ${.}        10s
    wait until element is visible           ${=}        10s
    wait until element is visible           ${+}        10s
    wait until element is visible           ${-}        10s
    wait until element is visible           ${x}        10s
    wait until element is visible           ${÷}        10s

enter input
    [Arguments]             ${amount}
    click element       ${amount}
    ${amount}       get text            ${amount}

get final amount
    ${amount}       get text        ${AmountText}
    [Return]         ${amount}

click on choose category
    click element       ${KeyboardAction}

check the income category items
    wait until element is visible       ${incomeDeposit}        10s
    wait until element is visible       ${incomeSalary}        10s
    wait until element is visible       ${incomeSavings}        10s
    wait until element is visible       ${CategoryAdd}        10s

check the expense category items
    wait until element is visible       ${ExpenseBills}         10s
    wait until element is visible      ${ExpenseCar}        10s
    wait until element is visible       ${ExpenseClothes}        10s
    wait until element is visible       ${ExpenseCommunications}         10s
    wait until element is visible      ${ExpenseEatingout}        10s
    wait until element is visible      ${ExpenseEntertainment}        10s
    wait until element is visible       ${ExpenseFood}         10s
    wait until element is visible      ${ExpenseGifts}         10s
    wait until element is visible      ${ExpenseHealth}        10s
    wait until element is visible       ${ExpenseHouse}         10s
    wait until element is visible      ${ExpensePets}        10s
    wait until element is visible      ${ExpenseSports}        10s

click on category
    [Arguments]         ${Category}
    click element           ${Category}