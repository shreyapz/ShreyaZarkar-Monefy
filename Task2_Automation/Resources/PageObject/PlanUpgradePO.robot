*** Settings ***
Library                          AppiumLibrary

*** Variables ***
${textViewTitlePlan}        //android.widget.TextView[@text='Claim your one-time welcome offer']
${textViewDetails1Plan}     //android.widget.TextView[@text='Unlock everything in the app']
${textViewDetails2Plan}     //android.widget.TextView[@text='Create your own categories']
${textViewDetails3Plan}     //android.widget.TextView[@text='Sync to multiple devices']
${textViewDetails4Plan}     //android.widget.TextView[@text='Customize to your needs']
${ClaimOfferBtn}            id=buttonPurchase
${CloseBtn}                 id=buttonClose

*** Keywords ***
check the UI of Plan upgrade screen
    wait until element is visible       ${textViewTitlePlan}
    wait until element is visible       ${textViewDetails1Plan}
    wait until element is visible       ${textViewDetails2Plan}
    wait until element is visible       ${textViewDetails3Plan}
    wait until element is visible       ${textViewDetails4Plan}
    wait until element is visible       ${ClaimOfferBtn}
    wait until element is visible       ${CloseBtn}

click on close button
    click element       ${CloseBtn}

