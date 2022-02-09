*** Settings ***
Library                          AppiumLibrary

*** Variables ***
${AccountSpinner}                           id=account_spinner
${Day}                              id=day_period_button
${Week}                         id=week_period_button
${Month}                       id=month_period_button
${Year}                          id=year_period_button
${All}                                id=all_period_button
${Interval}                                id=custom_period_button
${Choosedate}                                id=show_datepicker_button


*** Keywords ***
check the options for navigation drawer
   wait until element is visible        ${AccountSpinner}
    wait until element is visible          ${Day}
    wait until element is visible     ${Week}
    wait until element is visible     ${Month}
    wait until element is visible     ${Year}
    wait until element is visible     ${All}
    wait until element is visible     ${Interval}
    wait until element is visible     ${Choosedate}




