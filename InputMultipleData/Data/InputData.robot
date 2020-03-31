*** Variables ***
#Confifuration
${BROWSER}  =  chrome
${ENVIRONMENT}  =  prod
&{BASE_URL}  dev=https://dev.cars.com  qa=https://qa.cars.com  prod=https://www.cars.com
${LOGIN_URL}  =  profile/secure/login

#Input Data
&{UNREGISTERED_USER}  =  Email=kalmazan@yahoo.com  Password=Pasword123  ExpectedErrorMessage=Error
&{INVALID_PASSWORD_USER}  =  Email=kixalmazan@yahoo.com  Password=Pasword123  ExpectedErrorMessage=Error
&{BLANK_CREDENTIAL_USER}  =  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error