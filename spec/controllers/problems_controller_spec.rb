require 'spec_helper'

describe ProblemsController do
	describe "GET index" do
		it "gets the problems" do
			Problem.should_receive(:all)
			get :index
		end
	end

end
