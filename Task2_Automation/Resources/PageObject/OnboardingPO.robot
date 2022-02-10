*** Settings ***
Library                          AppiumLibrary
Library                          String
Resource                         ../Common/CommonKeywords.robot

*** Variables ***
${TextViewHeaderScreen1}           //android.widget.TextView[@text='Say hi to your new finance tracker']
${textViewDetailsScreen1}           //android.widget.TextView[@text='You’re amazing for taking this first step towards getting better control over your money and financial goals.']
${GetStartedBtn}        //android.widget.Button[@text='GET STARTED']
${TextViewHeaderScreen2}        //android.widget.TextView[@text='Control your spend and start saving']
${textViewDetailsScreen2}       //android.widget.TextView[@text='Monefy helps you control your spending, track your expenses, and ultimately save more money.']
${AmazingBtn}       //android.widget.Button[@text='AMAZING']
${TextViewHeaderScreen3}        //android.widget.TextView[@text='Together we’ll reach your financial goals']
${textViewDetailsScreen3}       //android.widget.TextView[@text='If you fail to plan, you plan to fail. Monefy will help you stay focused on tracking your spend and reach your financial goals.']
${IAmReadyBtn}       //android.widget.Button[@text='I’M READY']

*** Keywords ***
verify onboarding screen 1
    wait until element is visible       ${TextViewHeaderScreen1}        10s
    wait until element is visible       ${textViewDetailsScreen1}        10s
    wait until element is visible       ${GetStartedBtn}        10s

click on Get strted button
    click element       ${GetStartedBtn}

verify onboarding screen 2
    wait until element is visible       ${TextViewHeaderScreen2}        10s
    wait until element is visible       ${textViewDetailsScreen2}        10s
    wait until element is visible       ${AmazingBtn}        10s

click on Amazing button
    click element       ${AmazingBtn}

verify onboarding screen 3
    wait until element is visible       ${TextViewHeaderScreen3}        10s
    wait until element is visible       ${textViewDetailsScreen3}        10s
    wait until element is visible       ${IAmReadyBtn}       10s

click on i am Ready button
    click element       ${IAmReadyBtn}