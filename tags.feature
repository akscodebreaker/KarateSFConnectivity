@one
Feature:

@two=foo,bar
Scenario:
* def tagNames = karate.tags
* def tagValues = karate.tagValues
* print tagNames
* print tagValues

# @ignore
# Given url 'https://gorest.co.in/public/v2/users'
# And path '4040723'
# When method GET
# Then status 200

# * print response

#Scenario:
#* print 'printing key from karte config :',key