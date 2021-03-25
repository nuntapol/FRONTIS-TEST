***Settings***
Resource    ../import/imports.robot

***Keywords***
Navigate To Website
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser}