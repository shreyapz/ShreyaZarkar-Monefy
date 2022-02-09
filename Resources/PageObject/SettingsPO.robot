*** Settings ***
Library                          AppiumLibrary

*** Variables ***
${CatehoriesPanel}                           id=categories_panel
${AccountsPanel}                              id=accounts_panel
${CurrencyPanel}                         id=currency_panel
${SettingsPanel}                       id=settings_panel

*** Keywords ***
check the options in settings
   wait until element is visible        ${CatehoriesPanel}
    wait until element is visible          ${AccountsPanel}
    wait until element is visible     ${CurrencyPanel}
    wait until element is visible     ${SettingsPanel}





