*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}            firefox
${url}                https://google.com
${googleLogo}         css=svg[aria-label='Google']
${destinationPage}    jotajotavm.com
${pageText}           Cursos Gratis de Programación
${pageTitle}          Cursos Gratis de Programación 
${recaptchaText}      About this page
${isRecaptcha}        True

*** Keywords ***
Check Recaptcha
    Wait Until Page Contains    ${recaptchaText}
    Capture Page Screenshot     screenshot-{index}.png
    Close Browser 

Go To Destination Page
    Wait Until Page Contains    ${pageText}
    Click Element               xpath=//h3[@id='_L8gEaZuLF9LZ1sQProLq4Ak_50']
    Title Should Be             ${pageTitle}
    Sleep                       2s
    Capture Page Screenshot     screenshot-{index}.png
    Close Browser

*** Test Cases ***
Search Google and Navigate
    [Tags]                           TC_001
    Open Browser                     ${url}                                                      ${browser}
    Wait Until Element Is Visible    ${googleLogo}
    Sleep                            2s
    Input Text                       xpath=//textarea[@id='APjFqb']                              ${destinationPage}
    Click Element                    css=.lnXdpd
    Click Element                    xpath=//div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    Run Keyword If                   ${isRecaptcha}                                              Check Recaptcha       ELSE    Go To Destination Page
