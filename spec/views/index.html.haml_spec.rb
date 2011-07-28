require 'spec_helper'

describe 'problems/index.html.haml' do
	# before :each do
	# 	10.times {Factory :problem}
	# end
	
	before :each do
		# Create some problems
		@problems = []
		10.times { @problems << mock_model('Problem') }
	end

	context "the problem table" do
		it "shows headers" do
			assign(:problems, [])
			col_heads = %W(Problem Solution Year Meet Round Number)
			render
			rendered.should have_selector('table') do
				rendered.should have_selector('thead') do
					rendered.should have_selector('tr') do
						col_heads.each do |head|
							rendered.should have_selector('td') do
								rendered.should contain(head)
							end
						end
					end
				end
			end # shows the headers
		end
		it "shows the problems" do
			assign(:problems, @problems)
			render
		end
			
			
	end # the problem table
		
end
