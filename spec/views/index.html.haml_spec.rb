require 'spec_helper'

describe 'problems/index.html.haml' do
	include ProblemsHelper

	before :each do
		@problems = make_some_mock_problems
	end
	
	#! This is all covered by Cucumber now
	# context "the problem table" do
	# 	it "shows headers" do
	# 		assign(:problems, [])
	# 		col_heads = %W(Problem Solution Year Meet Round Number)
	# 		render
	# 		rendered.should have_selector('table') do
	# 			rendered.should have_selector('thead') do
	# 				rendered.should have_selector('tr') do
	# 					col_heads.each do |head|
	# 						rendered.should have_selector('td') do
	# 							rendered.should contain(head)
	# 						end
	# 					end
	# 				end
	# 			end
	# 		end # shows the headers
	# 	end
	# 		
	# 		
	# end # the problem table
		
end
