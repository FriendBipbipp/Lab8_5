*** Test Cases ***
Verify College of Computing Website Title
    Given the browser is opened in headless mode
    When I navigate to the computing kku page
    Then the page title should contain "College of Computing"
    And I close the browser

*** Keywords ***
the browser is opened in headless mode
    ${opts}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${opts}    add_argument    --headless
    Call Method    ${opts}    add_argument    --no-sandbox
    Create Webdriver    Chrome    options=${opts}

the navigate to the computing kku page
    Go To    https://computing.kku.ac.th

the page title should contain "${expected_text}"
    ${title}=    Get Title
    Should Contain    ${title}    ${expected_text}