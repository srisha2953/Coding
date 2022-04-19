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
${Sign_In}              link:Sign In
${Search_bar}           css:.mb-3 input
${Alpha_values}         SrishaBJoshi
${Num_values}           654654616541
${AlNum_values}         Srisha000009
*** Keywords ***
To check that when user click on Become a seller button seller landing is displayed
    click element       ${become_a_seller}
    switch window       NEW
    wait until element is visible       ${seller_page_explore}              timeout=20
    page should contain     You bring the solutions

To check that when user click on Explore button marketplace dashborad is displayed
    click element       ${explore}
    switch window       NEW
    wait until page contains    Offerings       timeout=20
    page should contain         Offerings

To check that when user click on Join button buyer registration page is displayed
    click element       ${join}
    switch window       NEW
    wait until element is visible       ${lady_with_laptop}         timeout=20
    page should contain     Create a new account

To check that when user click on Sign In button Sign In as seller and Sign In as buyer
    click element       ${Sign_In}
    page should contain     Sign In as seller
    page should contain     Sign In as buyer

To check that search bar accepts alphabets
    input text      ${Search_bar}       ${Alpha_values}
    ${received_value}=      get element attribute      ${Search_bar}        value
    element text should be  ${Search_bar}   ${Alpha_values}

To check that search bar accepts numbers


To check that search bar accepts alphanumeric values


To check that search bar accepts spaces