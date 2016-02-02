*** Settings ***
Documentation    Suite description
Library  Selenium2Library

*** Test Cases ***
Test title


*** Keywords ***
Begin web test
    open browser  anout:blank  ie
    go to  https://stagingweb.nsb.no/
    maximize browser window


End web test
    close browser