require 'spec_helper'

describe ProblemsController do
	describe "GET index" do
		# We're only using problems without images at this oint
		it "gets problems without images" do
			Problem.should_receive(:problems_wo_images)
			get :index
		end
	end

end
