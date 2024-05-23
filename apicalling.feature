Feature:

#https://gorest.co.in/public/v2/users
#/public/v2/users/2286
#get

Scenario:
#Given url "https://gorest.co.in/public/v2/users"
And def clientid = "3MVG9n_HvETGhr3DUkrS5_wQ3j75I0kotrKyk_AtTmPWsLYkn4iVzpUsVqZmLyqfNzUz2zdcLodGv1aquGPSU"
And def clientsecret = "9402D93C6035FF3FC23A55B7F057F8E3BE0160B289A1432F9FF9C491D2749A1C"
And def username = "akash.sharma@resourceful-koala-tl33au.com"
And def password = "salesforce@1230M86OnDlOciJWvJomqq3t48i"

#Given url "https://resourceful-koala-tl33au-dev-ed.trailblaze.my.salesforce.com/"
Given url "https://login.salesforce.com/services/oauth2/token"
And form field grant_type = 'password'
And form field client_id = clientid
And form field client_secret = clientsecret
And form field username = username
And form field password = password

#And request {AccName : “Karate”}
#And def reqbody ='grant_type=password&client_id=’+clientId+’&client_secret=’+clientSecret+’&username=’+username+’&password=’+password
#And request {grant_type:'password',client_id:'#(clientid)',client_secret:'#(clientsecret)',username:'#(username)',password:'#(password)'}
Then method  post
Then status 200
 
* print 'responsee',response
* print 'this is response',response.access_token


