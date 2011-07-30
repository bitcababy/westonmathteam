module ProblemHelper
	def make_some_mock_problems(n=10)
		(1..n).collect { mock_model('Problem') }
	end
	
	def make_some_factory_problems(n=10)
		(1..n).collect { Factory(:problem) }
	end
	
end