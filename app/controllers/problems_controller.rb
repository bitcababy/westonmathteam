class ProblemsController < ApplicationController
	def index
    @problems = Problem.all
		
    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @problems }
    end
  end
  
end
