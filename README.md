This project is devided into:

Task1->
- Monefy task1.txt
- Monefy Bugs.xlsx

Task2_Automation->
- Automation folders
- Reports can be found under TestCases/result/report.html

Task2_Recording.mov->
- Recording of execution


Android automation using ROBOT FRAMEWORK + APPIUM + PYTHON

The test automation project is divided into three layers
- Page Object layer
    - This layer is part of the Resources folder.
    - Page Object folder contains the files for each screen. 
    - Each page/file will have the element locators which are present in that file. Example-The element locator for expense and income buttons will be in the HomePO.robot file
    - The small action keywords example- "click on income button" will also be part of the page object HomePO.robot file 
- Keyword layer
  - This layer is the middle layer between Page object and the Test case layer
  - Multiple keywords from the Page object layer are combined together to form one keyword. 
  - This layer defines the steps needed for the test case layer 
  - All the calculations and validations can also be done here
  - With the help of many small keywords, a big keyword can be created. 
- Test case layer
  - it will have the Test steps which are created in the Keyword layer
  - test setup, test teardown, suit setup , suit teardown are part of this layer
  - Tags can be added to the test cases. 

Android Automation installation and setup.

- Download Python 3x, JAVA
- Android Studio is needed in case if you want to use the emulators, Plus it also downloads the android SDK so this is a must step - https://developer.android.com/studio
- Pycharm IDE or any equivalent 
  - Mac: https://www.jetbrains.com/pycharm/download/#section=mac 
  - Win: https://www.jetbrains.com/pycharm/download/#section=windows
- Installing Appium via 
  - NPM: https://www.npmjs.com/package/appium or 
  - Installing Appium desktop for identifying the element ID :https://github.com/appium/appium-desktop/releases/
- Installing Robot Framework and Appium library: https://pypi.org/project/robotframework-appiumlibrary/
- Add JAVA, ANDROID SDK, Python path to the system variables 
- Start Pycharm and import this project in Pycharm
- In Pycharm go to settings/preference and select the Project interpreter
- In Pycharm Install the Plugins (from pycharm settings->Plugins) required for better readability and support from Pycharm:
  - IntelliBot
  - Robot Framework Support
  - Run Robot framework TestCase

Test Execution
- Connect the android device to the machine by USB (make sure you have the developer option ON)
- Start the appium desktop server.
- Make sure the port you are using for Appium server are same as the one you pass in the test case. 
- also check for the device UUID and the android version of your devices matches the arguments in the test file
- in the console of Pycharm navigate to results folder and enter the execution command: Robot -d results MonifyTestCases.robot
- Execute the files which are in Test case folder.

Task 2- 
A list of ideas/bullet points you would test for. Focus on good coverage, rather than complete test cases.
- check the onboarding screen UI
- check the UI of Plan upgrade screen
- check the home page
- get the income value from home screen
- Add the amount to income screen
- check the income category items
- check the income added on Home screen (addition of previously added incomes + newly added income)
- get the expense value from home screen
- Add the amount to expense screen
- check the expense category items
- check the expense added on Home screen (addition of previously added expenses + newly added expense)
- Verify Balance amount is calculated correctly (income-expenses)
- check the options for open navigation
- check the settings options
    
A prioritization of such test cases according to their possible business impact in case of failure.
- Add income to any category and check the income is reflected in Pie chart
- Add expense to any category and check the expense is reflected in Pie chart
- check the Balace is calculated correctly

Please explain your approach and why you chose the particular tech stack
- chose android app to automate using appium and robot framework
- configuring android app is quicker in terms of time contraints.
- Appium is open source automation tool which supports native and hybrid applications.
- Robot framework is quick to setup and get started with it. redability of test cases and its steps are redable. great report genartion tool.  
