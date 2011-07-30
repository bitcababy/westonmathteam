class Problem < ActiveRecord::Base
	def has_img_tag?
		self.problem.include?('<img')
	end

	def self.problems_wo_images
	    self.all.reject {|p| p.has_img_tag? }
	end
	
end
