Feature: Javascript features

	~@javascript
	Background:
		Given these problems
		 | problem | solution | year | meet | round | number |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		And I'm viewing the problems table
		
	Scenario: General table structure
	
	Scenario: Clickable headings
		Then I should see the following sortable headings
		 | heading  |
		 | Problem  |
		 | Solution |
		 | Year     |
		 | Meet     |
		 | Round    |
		 | Number   |

	@javascript
	Scenario: Clicking on a sortable heading
		When I click on the Year heading
		Then I should see the following content
		 | Problem | Solution | Year | Meet | Round | Number |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		
