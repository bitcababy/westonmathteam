When /^I click on the Year heading$/ do 
	script = "$('#problems').dataTable().fnSort([[2, 'asc']])"
	page.execute_script(script)
end

When /^I enter "([^"]*)" in the search box$/ do |arg1|
	script = "$('#problems').dataTable().fnFilter('#{arg1}')"
	page.execute_script(script)
end

Then /^I should see the following sortable headings$/ do |table|
	table.hashes.each do |hash|
		heading = hash['heading']
		selector = 'th#' + heading.downcase
		selector2 = "#{selector} DataTables_sort_wrapper"
		page.has_css?(selector2)
	end
end

Then /^there should be a way to choose how many entries to show$/ do
	page.has_css?("#problems_length")
end

Then /^there should be a way to search for specific problems$/ do
	page.has_css?("#problems_filter")
end