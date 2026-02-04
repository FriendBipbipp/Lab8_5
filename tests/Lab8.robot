*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://computing.kku.ac.th

*** Test Cases ***
Verify College of Computing Website Title
    
    ${options}=    Set Variable    add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage")
    
    
    Open Browser    ${URL}    browser=chrome    options=${options}
    Title Should Contain    College of Computing
    [Teardown]    Close Browser