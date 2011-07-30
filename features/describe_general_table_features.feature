Feature: General table features

	Background:
		Given these problems
		 | problem | solution | year | meet | round | number |
		 | xfoo    | cbar     | 1992 | 4    | 2     | 2      |
		 | foobie  | bletch   | 1991 | 3    | 1     | 2      |
		And I'm viewing the problems table
	
	Scenario: Clickable headings
		Then I should see the following sortable headings
		 | heading  |
		 | Problem  |
		 | Solution |
		 | Year     |
		 | Meet     |
		 | Round    |
		 | Number   |

	Scenario: Choosing # of entries
		Then there should be a way to choose how many entries to show

	Scenario: Searching
		Then there should be a way to search for specific problems
