def translate(sentence)
	wordArray = sentence.split(" ")
	wordArray.each {|x|
		if (x.include? "qu")
			
			#square
			#1
			i = x.index("q")
			
			if (i > 0)#sQ
				x << (x[i-1].to_s + "quay")#sQuaresquay
				x.sub!(x[i-1], "")
				x.sub!("qu", "")
			else
				x << ("quay")
				x.sub!("qu", "")
			end
		#one vowel appends ay
		elsif (x[0] == "a" or x[0] == "e" or x[0] == "i" or x[0] == "o" or x[0] == "u")
			x << ("ay")
		#one consonant and one vowel appends ay
		elsif (x[0] != "a" or x[0] != "e" or x[0] != "i" or x[0] != "o" or x[0] != "u" and x[1] == "a" or x[1] == "e" or x[1] == "i" or x[1] == "o" or x[1] == "u")
			x << (x[0].to_s + "ay")
			x[0] = ""
		#two consonants
		elsif (x[0] != "a" or x[0] != "e" or x[0] != "i" or x[0] != "o" or x[0] != "u" and x[1] != "a" or x[1] != "e" or x[1] != "i" or x[1] != "o" or x[1] != "u" and x[2] == "a" or x[2] == "e" or x[2] == "i" or x[2] == "o" or x[2] == "u")
			x << (x[0].to_s + x[1].to_s + "ay")
			x[0] = ""
			x[0] = ""
		#three consonants
		elsif (x[0] != "a" or x[0] != "e" or x[0] != "i" or x[0] != "o" or x[0] != "u" and x[1] != "a" or x[1] != "e" or x[1] != "i" or x[1] != "o" or x[1] != "u" and x[2] != "a" or x[2] != "e" or x[2] != "i" or x[2] != "o" or x[2] != "u")
			x << (x[0].to_s + x[1].to_s + x[2].to_s + "ay")
			x[0] = ""
			x[0] = ""
			x[0] = ""
		end
	}
	wordArray.join(" ")
end