*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GOOGLE_URL}     https://www.google.com
${WIKI_URL}       https://www.wikipedia.org
${SEARCH_TERM}    80211be

*** Test Cases ***
Open Google Page
    [Documentation]    打開Google首頁
    Open Browser    ${GOOGLE_URL}    Chrome
    Maximize Browser Window
    Sleep    3s
    Close Browser

Navigate To Wikipedia form Google
    [Documentation]    從Google換到Wikipedia
	Open Browser    ${GOOGLE_URL}    Chrome
    Maximize Browser Window
    Sleep    3s
    Go To    ${WIKI_URL}   
    Sleep    5s
    Close Browser

Search 80211be On Google
    [Documentation]    在Google搜尋80211be
    Open Browser    ${GOOGLE_URL}    Chrome
    Maximize Browser Window
    Input Text    name=q    ${SEARCH_TERM}
    Press Keys    name=q    ENTER    
    Sleep    5s
    Close Browser