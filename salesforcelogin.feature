Feature:

Scenario:
	* def cat = 
	  """
	  {
	    name: 'Billie',
	    kittens: [
	      { id: 23, name: 'Bob' },
	      { id: 42, name: 'Wild' }
	    ]
	  }
	  """
	* def kitnums = get cat.kittens[*].id
	* match kitnums == [23, 42]
	* def kitnames = get cat $.kittens[*].name
	* match kitnames == ['Bob', 'Wild']