class ProblemsController < ApplicationController
	def index
    @problems = Problem.problems_wo_images
		
    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @problems }
    end
  end
  
end
