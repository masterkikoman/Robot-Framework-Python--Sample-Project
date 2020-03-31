*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary  #Not Necessary for logging only

*** Variables ***

*** Keywords ***
Check Github Username
    #Create session
    Create Session  my_github_session  https://api.github.com

    #Capturing the response
    ${response} =  Get Request  my_github_session  users/robotframeworktutorial

    #Check Response Status
    should be equal as strings  ${response.status_code}  200

    #Check the Response Body
    ${json} =  set variable  ${response.json()}
    should be equal as strings  ${json['login']}  robotframeworktutorial
    log  ${json}

Display Emoji

    Create Session  my_github_session  https://api.github.com

    ${response} =  Get Request  my_github_session  emojis
    should be equal as strings  ${response.status_code}  200

    ${json} =  set variable  ${response.json()}
    ${emoji_url} =  set variable  ${json['aerial_tramway']}
    open browser  ${emoji_url} chrome
    sleep  3s
    close browser
