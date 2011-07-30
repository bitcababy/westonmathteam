require 'spec_helper'

describe 'problems/index.html.haml' do
	include ProblemsHelper

	before :each do
		@problems = make_some_mock_problems
	end
		
end
