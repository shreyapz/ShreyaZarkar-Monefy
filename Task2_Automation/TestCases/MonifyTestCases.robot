*** Settings ***
Library                          AppiumLibrary
Resource                ../Keywords/OnboardingKeywords.robot
Resource                ../Keywords/OpenNavigationKeywords.robot
Resource                ../Keywords/HomePageKeywords.robot
Resource                ../Keywords/AddAmountKeywords.robot
Resource                ../Keywords/SettingsKeywords.robot
Resource                ../Resources/Common/Variable.robot
Suite Setup             Open the app for user      2caa25e732037ece          4723      10
Suite Teardown          Close the application

*** Test Cases ***
Test Case - Add income to any category and check the income is reflected in Pie chart
    check the home page
    ${OldAmount}        get the income value from home screen
    Add the amount to income screen
    Enter the amount        ${1}
    enter the amount        ${0}
    ${NewAmount}        check the entered value in input text box      10
    select the income category      ${incomeDeposit}
    check the income added on Home screen       ${OldAmount}        ${NewAmount}

Test Case - Add expense to any category and check the expense is reflected in Pie chart
    check the home page
    ${OldAmount}        get the expense value from home screen
    Add the amount to expense screen
    Enter the amount        ${8}
    Enter the amount        ${0}
    ${NewAmount}        check the entered value in input text box      80
    select the expense category      ${ExpenseClothes}
    check the expense added on Home screen      ${OldAmount}        ${NewAmount}

Test Case - check the Balace is calculated correctly
    ${IncomeAmount}        get the income value from home screen
    ${ExpenseAmount}        get the expense value from home screen
    Verify Balance amount is calculated correctly     ${IncomeAmount}   ${ExpenseAmount}

Test Case - check the options under open navigation and settings
    check the options for open navigation
    go back
    check the settings options