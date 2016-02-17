*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Library  SauceLabs

*** Variables ***
${BROWSER} =  ie
${START_URL} =  https://stagingweb.nsb.no/
${REMOTE_URL} =  http://nsbtest:65ce844f-5458-4dd7-b149-92208ab7fb9a@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES} =   name:Win8.1 + IE 11,platform:Windows 8.1,browserName:internet explorer,version:11.0
#>pybot -d results tests/nsbno.robot

*** Keywords ***
Begin web test
     #open browser  anout:blank  ${BROWSER}
     #go to   ${START_URL}
    #remote_url= desired_capabilities=name:Win8 + Chrome 43,platform:Windows 8.1,browserName:chrome,version:43
    open browser  ${START_URL} ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    #go to  https://stagingweb.nsb.no/
    maximize browser window


End web test
    close browser