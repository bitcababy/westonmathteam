## Givens

Given /^these problems$/ do |table|
	table.hashes.each do |hash|
		%w(number round meet year).each do |k|
			hash[k] = hash[k].to_i
		end
		Problem.create! hash
	end
end

Given /^I'm viewing the problems table$/ do
  visit "/problems"
end

## Whens

When /^I view the problems table$/ do
	visit "/problems"
end

## Thens

Then /^I should see the following content$/ do |expected_table|
	html_table = table(tableish('table#problems tr', 'th,td'))
	# puts html_table
	expected_table.diff!(html_table)
end


Then /^I should see a way to select how many entries I see$/ do
	page.should contain("Show")
end

