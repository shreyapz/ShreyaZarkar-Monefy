*** Settings ***

Library                   AppiumLibrary
Library                   Process
Library                   OperatingSystem
Resource                    Variable.robot

*** Variables ***
${APP}=                     Resources/App/com.monefy.app.lite.apk
${PLATFORM_NAME}=           Android
${APP_PACKAGE}=             com.monefy.app.lite
${APP_ACTIVITY}=            com.monefy.activities.main.MainActivity_
${AUTO_GRANT_PERMISSIONS}=    true
${AUTO_GRANT_PERMISSIONS_False}=   false
${automationName}=      UiAutomator2


*** Keywords ***
Launch the application
    [Documentation]     setup the variable to open application
    [Arguments]         ${DEVICE_NAME}      ${APPIUM_PORT}      ${ANDROID_VERSION}
    ${Dic}              create dictionary           newCommandTimeout=8000
    Terminate All Processes    kill=True
    start process       /usr/local/bin/appium  -p  ${APPIUM_PORT}  shell=True  alias=appiumserver  stdout=${CURDIR}/appium_stdout.txt  stderr=${CURDIR}/appium_stderr.txt
    open application    http://127.0.0.1:${APPIUM_PORT}/wd/hub    appName=${APP}      platformName=${PLATFORM_NAME}    platformVersion=${ANDROID_VERSION}      deviceName=${DEVICE_NAME}     appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}     autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}   automationName=${automationName}  #desired_capabilities=${Dic}


Close the application
    close application






