Feature: Loop

Scenario: Practicing loop

	* def fun = function(i){ return i*2}
	* def loop= karate.repeat(5,fun)
	* print 'output'
#	* match [0,1,2,3,4] == loop