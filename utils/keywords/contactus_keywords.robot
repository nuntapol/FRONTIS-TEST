***Settings***
Resource    ../import/imports.robot

***Variables***
${menu_aboutus}    xpath=//a[contains(text(),'About us')]
${menu_contactus}    xpath=//a[contains(text(),'Contact us')]
${address_txt_map_popup}  id=mapPopUp

***Keywords***
Navigate to Contact Us Page
    Wait Until Element Is Visible    ${menu_aboutus}    ${TIMEOUT}
    Mouse Over    ${menu_aboutus}
    Wait Until Element Is Visible    ${menu_contactus}    ${TIMEOUT}
    Click Element    ${menu_contactus}

Click On Address Information
    Wait Until Element Is Visible    ${address_txt_map_popup}    ${TIMEOUT}
    Click Element    ${address_txt_map_popup}

Verify Address Title In Google Map
    [Arguments]    ${expected_address_title}
    Wait Until Page Contains    ${expected_address_title}    ${TIMEOUT}