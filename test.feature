Feature:

 
Scenario:
Given configure driver = { type: 'chromedriver' , executable: 'chrome' }
Given url 'https://google.com'
And input('textarea[name=q]', 'karate dsl')
When submit().click('input[name=btnI]')
Then match driver.url == 'https://github.com/karatelabs/karate'
 