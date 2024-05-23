
Feature: Git login feature
 

  Scenario: LOgin
    * configure driver = { type: 'chrome',addOptions:["--remote-allow-origins=*"]}
    Given driver 'https://www.saucedemo.com/'    
    #And input("//*[@id='user-name']","standard_user")    
    #And input("//*[@id='password']","secret_sauce")
    And input("//*[@name='user-name']","standard_user")    
    And input("//*[@name='password']","secret_sauce")    
    When click("//*[@id='login-button']")
    Then waitForUrl('https://www.saucedemo.com/inventory.html');    
    Then match driver.title == 'Swag Labs'
    
    
 Scenario: sandbox login
    * configure driver = { type: 'chrome',addOptions:["--remote-allow-origins=*"]}
    #Given driver 'https://test.salesforce.com/'
    #Given driver 'https://wfd--objtest.sandbox.my.site.com/workforce/' 
    Given driver 'https://wfd--objtest.sandbox.my.site.com/workforce/s/login/'
    And input("//*[@id='username-1']","akash.sharma@wfd.objtest")   
    And input("//*[@id='password-1']","salesforce@wfd1")    
    When click("//*[@class='login-button']")
    Then waitForUrl('https://wfd--objtest.sandbox.my.site.com/workforce/s/')  
    * delay(5000)  
    Then match driver.title == 'Home | Salesforce'