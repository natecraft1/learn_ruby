def wordcheck(word)
	
  if "aeiou".include?(word[0])
  	word << "ay"
  else 
  	if "aeiou".include?(word[1])
	  	tmp = word[0]
  		word[0] = ''
 			word << tmp << "ay"
	  else
	  	if "aeiou".include?(word[2])
	  		firstTwo(word)
	  	else
	  		print "calledthree"
	  		firstThree(word)
	  	end 	
	  end
  end
end

def firstTwo(word)
	tmp0 = word[0] << word[1]
	2.times { word[0] = '' }
	word << tmp0 << "ay"
end

def firstThree(word)
	tmp1 = word[0] << word[1] << word[2]
	3.times { word[0] = '' }

	word << tmp1 << "ay"
end

def translate(sentence)

	if sentence.gsub(' ', '') != sentence
		wordarr = sentence.split(' ')
		wordarr.map { |word| conditions(word) }.join(" ")
	else
		print "called"
		conditions(sentence)
	end
end
def conditions(word)
	if word[0] == 'q' && word[1] == 'u'
 		firstTwo(word)
  elsif word[1] == 'q' && word[2] == 'u'
		firstThree(word)
	else
		print "gerro"
		wordcheck(word)
 	end
end
print translate("three")

