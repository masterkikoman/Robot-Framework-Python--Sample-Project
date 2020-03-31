*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web test
    open browser  about:blank  ${BROWSER}

End web Test
    close browser