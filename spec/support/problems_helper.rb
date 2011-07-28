module ProblemHelper
	def make_some_mock_problems(n=10)
		(1..n).collect { mock_model('Problem') }
	end
end