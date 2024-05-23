Feature:

Scenario: this is the first scenario

When def user = { name:'saloni', rollno: 2 } 
And def lan = 'en'
* def enclose = {name:'#(user.name)'}
* def json = ({name: user.name})
* match json == enclose