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
	  		tmp0 = word[0] << word[1]
	  		word[0] = ""
	  		word[0] = ""
	  		word << tmp0 << "ay"
	  	else
	  		tmp1 = word[0] << word[1] << word[2]
	  		3.times { word[0] = '' }
	  		word << tmp1 << "ay"
	  	end
	  	
	  end
  end
end

def firstTwo(word)
	tmp0 = word[0] << word[1]
	print word

	word[0] = ''
		print word

	word[0] = ''
		print word

	word << tmp0 << "ay"
end

def translate(sentence)

	if sentence.gsub(' ', '') != sentence
		wordarr = sentence.split(' ')
		wordarr.map { |word| wordcheck(word) }.join(" ")
	else
		if sentence[0] == 'q' && sentence[1] == 'u'
 			firstTwo(sentence)
 		else
			wordcheck(sentence)
		end
	end
end
print translate("quiet")

