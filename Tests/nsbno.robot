*** Settings ***
Documentation    Dette er en testsuite for NSB.no
Library  Selenium2Library


*** Variables ***w




*** Test Cases ***
User bestiller enkelreise
    [Documentation]  Tester bestilling av enkeltreise i Oslo S - Bergen. En voksen. Velger sete. Betaler med Mastercard.
    [Tags]    Smoke
    open browser  https://stagingweb.nsb.no/  ie
    maximize browser window
    wait until page contains  Hvor vil du reise?
    input text  id=from  Oslo S
    input text  id=dest  Bergen
    click button  id=searchJourney
    wait until page contains  Oslo S – Bergen
    select radio button  departure   1f
    click button  id=selectjourney-submit_form
    wait until page contains  Tog Region mot Bergen
    click link  Velg sete
    wait until page contains  Hvor vil du sitte?
    click link  10
    click element  css=input.nsb-js-click-tracking-seats.nsb-button
    click button  id=selectjourney-submit_form
    input text  id=username tor.martin.saur@nsb.no
    input password  id=input-password tqeCRSWf
    click element  input.nsb-button.nsb-button-primary
    wait until page contains  Dine togbilletter
    checkbox should be selected   input#terms-check.nsb-input-checkbox
    click element  input.nsb-button.nsb-button-primary.btn-pay
    input password  id=password tqeCRSWf
    click element  input.btn
    wait until page contains  Takk for at du kjøpte billett på nsb.no
    click element  input.nsb-button.nsb-button-primary
    wait until page contains  Last ned billetten selv
    input text  id=passenger-name-1 Ola Togpassasjer
    checkbox should be selected  id=terms-and-conditions
    click element  input.send-email.btn
    input text  id=to-email tor.martin.saur@nsb.no
    click element  input.btn.send
    wait until page contains  E-posten er sendt!
    close browser

*** Keywords ***
Provided precondition
