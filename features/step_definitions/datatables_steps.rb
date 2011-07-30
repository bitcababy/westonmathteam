When /^I click on the Year heading$/ do 
	script = "$('#problems').dataTable().fnSort([[2, 'asc']])"
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
