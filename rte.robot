*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.rte.ie
${BROWSER}    chrome
${CHROMEDRIVER_PATH}    c:/Tools/chromedriver/chromedriver.exe

*** Test Cases ***
Open RTE Website
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    RTÉ Ireland's National Television and Radio Broadcaster
    [Teardown]    Close Browser
