*** Settings ***
Library     DateTime
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
 TC1 Get datetime
      ${current date}  Get Current Date
      Log To Console    ${current date}

 TC2 open browser
     Append To Environment Variable    Path      ${EXECDIR}${/}driver
    Open Browser    url=https://google.com  browser=gc
    Maximize Browser Window
    Close Browser


