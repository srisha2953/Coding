*** Settings ***
Documentation       This file contains all the global variables and the browser instances

Library             SeleniumLibrary
Library             BuiltIn
Library             Collections
Library             String


*** Variables ***
${browser_name}                 Chrome
${ofofo_landingpage_url}        https://landingpage-dev.ofofo.io
${seller_landingpage_url}       https://seller-dev.ofofo.io
${buyer_url}                    https://buyer-dev.ofofo.io
${marketplace_url}              https://marketplace-dev.ofofo.io


*** Keywords ***
Open the browser with ofofo landing page
    create webdriver    ${browser_name}    executable_path=../BrowserDrivers/${browser_name}
    go to    ${ofofo_landingpage_url}

Close the browser
    close browser
