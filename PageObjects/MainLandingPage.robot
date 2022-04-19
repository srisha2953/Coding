*** Settings ***
Documentation       This page contains the keywords of the ofofo main landing page
Library             SeleniumLibrary
Library             BuiltIn
Library             Collections
Library             String

*** Variables ***
${become_a_seller}      css:.cursor-pointer.become-seller
${seller_page_explore}  xpath://span[normalize-space()='Explore']
${explore}              link:Explore
${join}                 css:.cursor-pointer p
${lady_with_laptop}     css:.center-img

*** Keywords ***
To check that when user click on Become a seller button seller landing is displayed
    click element       ${become_a_seller}
    switch window       NEW
    wait until element is visible       ${seller_page_explore}              timeout=20
    page should contain     You bring the solutions

To check that when user click on Explore button marketplace dashborad is displayed
    click element       ${explore}
    switch window       NEW
    wait until page contains    Offerings
    page should contain         Offerings

To check that when user click on Join button buyer registration page is displayed
    click element       ${join}
    switch window       NEW
    wait until element is visible       ${lady_with_laptop}
    page should contain     Create a new account
