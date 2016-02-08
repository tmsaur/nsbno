*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Variables ***
${BROWSER} =  ie
${START_URL} =  https://stagingweb.nsb.no/
#>pybot -d results tests/nsbno.robot

*** Keywords ***
Begin web test
    #open browser  anout:blank  ie
    #go to  https://test3web.nsb.no
    #remote_url=http://nsbtest:65ce844f-5458-4dd7-b149-92208ab7fb9a@ondemand.saucelabs.com:80/wd/hub desired_capabilities=name:Win8 + Chrome 43,platform:Windows 8.1,browserName:chrome,version:43
    open browser  ${START_URL} ${BROWSER}  remote_url=http://nsbtest:65ce844f-5458-4dd7-b149-92208ab7fb9a@ondemand.saucelabs.com:80/wd/hub desired_capabilities=name:Win8 + Chrome 43,platform:Windows 8.1,browserName:chrome,version:43
    #go to  https://stagingweb.nsb.no/
    maximize browser window


End web test
    close browser