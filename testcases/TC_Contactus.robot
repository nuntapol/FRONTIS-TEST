***Settings***
Resource    ../utils/import/imports.robot

***Test Cases***
TC001_Verify Position From Contact Us Page
    [Documentation]    To verify the position in Google map after navigate from contact us page
    [Tags]    contactus
    [Teardown]  Close All Browsers
    Navigate To Website  ${URL}
    Navigate to Contact Us Page
    Click On Address Information
    Verify Address Title In Google Map    ${googlemap.title}
    