def translate(word)


  if "aeiou".include?(word[0])
  	word << "ay"
  else 
  	if "aeiou".include?(word[1])
	  	tmp = word[0]
  		word[0] = ''
 			word << tmp << "ay"
	  else
	  	tmp0 = word[0] << word[1]
	  	word[0] = ""
	  	word[0] = ""

	  	word << tmp0 << "ay"

	  end
  	
  end
end
print translate("chesdfssakd")

