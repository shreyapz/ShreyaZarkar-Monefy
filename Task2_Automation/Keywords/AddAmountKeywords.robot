*** Settings ***
Library                    AppiumLibrary
Library                    String
Resource                   ../Resources/PageObject/AddAmountPO.robot
Resource                   ../Resources/PageObject/HomePO.robot

*** Keywords ***
Add the amount to income screen
    click on income button
    Verify the items on Amount screen
    verify keyboard items

Add the amount to expense screen
    click on expense button
    Verify the items on Amount screen
    verify keyboard items

Enter the amount
    [Arguments]             ${Amount}
    enter input         ${Amount}

check the entered value in input text box
    [Arguments]     ${Amount}
    ${finalAmount}      get final amount
    should be equal as strings          ${Amount}       ${finalAmount}
    ${int}      convert to integer      ${finalAmount}
    [Return]        ${int}

select the income category
    [Arguments]         ${Category}
    click on choose category
    check the income category items
    click on category       ${Category}

select the expense category
    [Arguments]         ${Category}
    click on choose category
    check the expense category items
    click on category       ${Category}