*** Settings ***
Library                    AppiumLibrary
Library                    String
Resource                   ../Resources/PageObject/SettingsPO.robot
Resource                   ../Resources/PageObject/HomePO.robot

*** Keywords ***
check the settings options
    click on settings options
    check the options in settings






