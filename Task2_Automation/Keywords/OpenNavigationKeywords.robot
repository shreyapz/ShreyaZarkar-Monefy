*** Settings ***
Library                    AppiumLibrary
Library                    String
Resource                   ../Resources/PageObject/OpenNavigationPO.robot
Resource                   ../Resources/PageObject/HomePO.robot

*** Keywords ***
check the options for open navigation
    click on open navigation
    check the options for navigation drawer






