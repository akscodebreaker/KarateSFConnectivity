Feature:

Scenario:
 Given url "https://resourceful-koala-tl33au-dev-ed.trailblaze.my.salesforce.com/services/apexrest/createccount/"
 #And header bearer = "00D2w00000RIIrf!AR0AQPBmDVgt3pFvg_EOLc4PW5LzOC7uL9_U3qSn17VRLd5wngpMQeMz41yoV8XVAhxVTJmeSDfzE1tCfp46XlSd.hnaQkNm"
 And header Authorization = "Bearer 00D2w00000RIIrf!AR0AQPBmDVgt3pFvg_EOLc4PW5LzOC7uL9_U3qSn17VRLd5wngpMQeMz41yoV8XVAhxVTJmeSDfzE1tCfp46XlSd.hnaQkNm"
 And request {AccName : 'Creating account from karate'}
 When method post
 Then status 200
 Then print 'response',response
 
 