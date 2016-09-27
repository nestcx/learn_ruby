class Book
	attr_accessor :title
	#def initialize(name)
	#	@name = name
	#end
	
	def title=(c_title)
		words = c_title.split(" ")
		words.each do |x|
			if (x != "the" && x != "an" && x!= "a" && x!= "and" && x!= "in" && x!= "of") 
			x.capitalize!
			end
		end
		words[0].capitalize!
	@title = words.join(" ")
	end
end