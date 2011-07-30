Feature: Datatables actions

	~@javascript
	Background:
		Given these problems
		 | problem | solution | year | meet | round | number |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		And I'm viewing the problems table
		

	@javascript
	Scenario: Clicking on a sortable heading
		When I click on the Year heading
		Then I should see the following content
		 | Problem | Solution | Year | Meet | Round | Number |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		
	@javascript
	Scenario: Search for a problem
		When I enter "bar" in the search box
		Then I should see the following content
		 | Problem | Solution | Year | Meet | Round | Number |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		