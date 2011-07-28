YEARS = [2003, 2004, 2005]

Factory.define :problem do |p|
	p.year				{ Factory.next :year}
	p.meet				1
	p.round				1
	p.number			{ Factory.next :number }
	p.problem			"What is the meaning of life?"
	p.solution		"42"
end

Factory.define :problem_with_img, :parent=>:problem do |p|
	p.problem			{ Factory.next :problem}
end

Factory.define :problem_wo_img, :parent=>:problem do |p|
	p.year				{ Factory.next :year}
	p.meet				1
	p.round				1
	p.number			{ Factory.next :number }
	p.problem			"What is the meaning of life?"
	p.solution		"42"
end


Factory.sequence :year do |n|
	YEARS[n % YEARS.size]
end

Factory.sequence :number do |n|
	n
end

Factory.sequence :problem do |n|
	'This is a problem with an img <img src=' + "pics/foo#{n.to_s}" + '>'
end

