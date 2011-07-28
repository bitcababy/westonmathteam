## Givens

Given /^these problems$/ do |table|
	table.hashes.each do |hash|
		Problem.create! hash
	end
end

## Whens

When /^I view the problems table$/ do
  pending # express the regexp above with the code you wish you had
end

## Thens
Then /^I should see the following contents$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the following headers$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
