def echo(a)
	return a.to_s
end

def shout(a)
	return a.upcase
end

def repeat(a, b=2)
	v = ""
	b.times do
		v.concat(a + " ")
	end
	v.chomp(" ")
end

arr = []
def start_of_word(a, b=1)
	a.each {|letter| arr.push(letter)}
	puts arr.to_s
end

def start_of_word(a, b=1)
	v = a.split("")
	value = v.take(b).join("")
end

def first_word(a)
	word = a.split(" ")
	return word[0]
end

def titleize(a)
	word = a.split(" ")
	word.each {|pep| if not (pep == "and" or pep == "the" or pep == "over")
					wordC = pep.capitalize!
					word[0].capitalize!
					end}
	word.join(" ")
end
