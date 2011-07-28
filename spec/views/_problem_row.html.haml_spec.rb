require 'spec_helper'

describe 'problems/_problem_row.html.haml' do
	include ProblemsHelper
	it "displays fields from a problem" do
		problem = Factory(:problem)
		render :partial => 'problems/problem_row.html.haml', :locals =>{ :problem_row => problem}
		rendered.should contain(problem.problem)
		rendered.should contain(problem.solution)
		rendered.should contain(problem.year.to_s)
		rendered.should contain(problem.meet.to_s)
		rendered.should contain(problem.round.to_s)
		rendered.should contain(problem.number.to_s)
	end
		
end