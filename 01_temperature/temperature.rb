def ftoc(number)
  (number - 32) * 5/9
	
end

def ctof(num)
	num * 9/5.to_f + 32
end

puts ctof(37)