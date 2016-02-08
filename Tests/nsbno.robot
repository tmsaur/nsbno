*** Settings ***
Documentation    Dette er en testsuite for NSB.no
Resource  ../Resources/Nsbno.robot
Resource  ../Resources/Felles.robot


*** Variables ***




*** Test Cases ***
Voksen enkelreise uten setevalg Mastercard PDF-billett på epost
    [Documentation]  Enkeltreise Oslo S - Bergen. En voksen. Velger sete. Betaler med Mastercard. PDF-billett til epost
    [Tags]    Smoke
    Felles.Begin web test
    Nsbno.Sok reise
    Nsbno.Velg reise fra sokeresultat
    Nsbno.Velg ikke seteplassering 1 passasjer
    Nsbno.Login ved bestilling
    Nsbno.Betal togbillett
    Nsbno.Send PDF-togbillett til togpassasjers epost-adresse
    Felles.End web test


*** Keywords ***
