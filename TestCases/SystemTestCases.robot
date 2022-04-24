*** Settings ***
Documentation   This file consists of all the System Test cases
Library         SeleniumLibrary
Library         BuiltIn
Library         Collections
Library         String
Resource        ../Resources/Utility.robot
Resource        ../PageObjects/MainLandingPage.robot
Resource        ../PageObjects/SellerLandingPage.robot
Resource        ../PageObjects/SellerRegistrationPage.robot
Resource        ../PageObjects/SellerSignInPage.robot
Resource        ../PageObjects/SellerEntitySelectionPage.robot
Resource        ../PageObjects/BuyerRegistrationPage.robot
Resource        ../PageObjects/BuyerSignInPage.robot
Test Setup      Open the browser
Test Teardown   Close the browser

*** Variables ***


*** Test Cases ***
To check that seller is able to Register to the Ofofo platform
    SellerRegistrationPage.Goto to seller registration
     SellerRegistrationPage.Register by entering all the values
    Verify the seller
    login as a seller
    Select the entity of the seller
    Fill the business information
    Fill the credibility information
    Fill the marketing information
    verify that seller is sucessfully onboarded

To check that buyer is able to register to the ofofo platform
    Goto to buyer registration
    Register by entering all the values
    Verify the buyer
    login as a buyer
    Fill the company information
    Fill the business information
    Select the company persona
    verify that buyer is sucessfully onboarded

To check that admin is able to Approve the seller
    sign in as admin
    go to seller approval
    review the seller
    approve the seller
    sign in as seller
    verify the seller is approved

To check that admin is able to view the buyer and his the status of onboarding
    sign in as admin
    go to buyer details
    check the buyer email and his status of onboarding


