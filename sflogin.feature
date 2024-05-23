Feature:

Scenario:
Given configure driver = { type: 'chromedriver' , executable: 'chrome' }
Given driver 'https://wfd--cmpmigrat2.sandbox.my.site.com/workforce/s/login/'
 Given driver.maximize()
 And delay(20000)
  * assert optional('#peak-body').present
#* assert optional('.employer-logo').present
* assert optional('.username-container').present
#* assert optional('c-wfd-login > lightning-layout').present
* assert optional('c-wfd-login > .outer-container').present 
#And waitFor('.login-button').click()
#* def error = html('.error-alert')
#Then print 'url :: ', error
#And def textxt = text('.form-heading')
#And match text('Trailhead Coach') == 'Trailhead Coach'
#And retry(10).waitFor('#username-1')
#And input('//*[@id="username-1"]', 'testprogramuser2@thinkvibes.wfd.uat')
#And input('#password-1', 'Welcometv@123')
#And click('//*[@id="peak-body"]/section[3]/div/div/div/c-wfd-login/lightning-layout/slot/lightning-layout-item/slot/div/div[2]/div/div/div[6]/a[1]')
#Then print 'url :: ', driver.url
#* def error = html('.error-alert')
#* print 'error', error