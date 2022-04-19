*** Settings ***
Documentation   This file consists of all the Functional Test cases
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
Test Setup      Open the browser with ofofo landing page
Test Teardown   Close the browser
*** Variables ***

*** Test Cases ***
Become a seller button
    MainLandingPage.To check that when user click on Become a seller button seller landing is displayed

Explore button
    MainLandingPage.To check that when user click on Explore button marketplace dashborad is displayed

Join button
    MainLandingPage.

    To check that when user click on Join button buyer registration page is displayed