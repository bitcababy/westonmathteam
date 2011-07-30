Feature: The problem list view

	Scenario: The problems
		Given these problems
		 | problem | solution | year | meet | round | number |
		 | foo     | bar      | 1991 | 3    | 1     | 1      |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		When I view the problems table
		Then I should see the following content
		 | Problem | Solution | Year | Meet | Round | Number |
		 | foo     | bar      | 1991 | 3    | 1     | 1      |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
	
