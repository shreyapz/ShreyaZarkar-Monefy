*** Settings ***
Library                    AppiumLibrary
Library                    String
Resource                   ../Resources/PageObject/OnboardingPO.robot
Resource                   ../Resources/PageObject/PlanUpgradePO.robot

*** Keywords ***
Go through Onboarding screens
    verify onboarding screen 1
    click on Get strted button
    verify onboarding screen 2
    click on amazing button
    verify onboarding screen 3
    click on i am Ready button
    ${Present}      run keyword and return status       check the UI of Plan upgrade screen
    run keyword if      ${Present} ==True       click on close button

Open the app for user
    [Arguments]                              ${DeviceUID}    ${portNum}    ${andrVersion}            #${emailid}        ${pwd}
    Launch the application               ${DeviceUID}      ${portNum}         ${andrVersion}
    Go through Onboarding screens
