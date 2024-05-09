*** Settings ***
Library           AppiumLibrary
# robot -d Results Tests/OpenTheApp.robot
*** Variables ***
${DEVICE_NAME}    Android Emulator-5554
${PLATFORM_NAME}  Android  # Or iOS
${PLATFORM_VERSION}  Your_Platform_Version
${APP_PACKAGE}    com.jci.iqwifi.user.app # Package name of your app
${APP_ACTIVITY}   com.jci.iqwifi.user.app.MainActivity  # Activity name of your app
#${APP_PATH}       /path/to/your/app.apk  # Path to your app APK file

${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/demoapp/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=11}

*** Test Cases ***
Open Mobile Application
#     Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
#  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
#  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke
    Open Application	http://localhost:4723/wd/hub	platformName=Android	deviceName=10.0.2.16:5554	app=com.jci.iqwifi.user.app	appActivity=com.jci.iqwifi.user.app.MainActivity