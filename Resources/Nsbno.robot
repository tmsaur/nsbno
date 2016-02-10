*** Settings ***
Documentation    NSB.no test sutie
Library  Selenium2Library

*** Keywords ***
Sok reise
    wait until page contains  Hvor vil du reise?
    input text  id=from  Oslo S
    input text  id=dest  Bergen
    click button  id=searchJourney
Velg reise fra sokeresultat
    wait until page contains  Oslo S – Bergen
    select radio button  departure   1f
    click button  id=selectjourney-submit_form
Velg ikke seteplassering 1 passasjer
    wait until page contains  Tog Region mot Bergen
    ##click link  Velg sete
    #wait until page contains  Hvor vil du sitte?
    #click link  65
    #click element  css=input.nsb-js-click-tracking-seats.nsb-button
    click button  id=selectjourney-submit_form
Login ved bestilling
    wait until page contains  Ved å logge inn får du
    input text  id=username  tor.martin.saur@nsb.no
    input password  id=login-password  tqeCRSWf
    click element  css=input.nsb-button.nsb-button-primary
Betal togbillett
    wait until page contains  Dine togbilletter
    select checkbox  id=terms-check
    click element  css=input.nsb-button.nsb-button-primary.btn-pay
    input password  id=password  tqeCRSWf
    click element  css=input.btn
Send PDF-togbillett til togpassasjers epost-adresse
    wait until page contains  Takk for at du kjøpte billett på nsb.no
    click element  css=input.nsb-button.nsb-button-primary
    wait until page contains  Last ned billetten selv
    input text  id=passenger-name-1  Ola Togpassasjer
    select checkbox  id=terms-and-conditions
    click element  css=input.send-email.btn
    input text  id=to-email  tor.martin.saur@nsb.no
    click element  css=input.btn.send
    wait until page contains  E-posten er sendt!