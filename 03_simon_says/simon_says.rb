def echo(says)
	says
end

def shout(arg)
	arg.upcase
end

def repeat(x, n=1)
	x + (" #{x}")*(n-1) 
end

def start_of_word(w, n)
	w.slice!(0..n-1)
end

def first_word(w)
	w.split(" ")[0]

end
def titleize(a)
   array = ["a", "an", "and", "the"]

   b = .gsub(/\w+/) {|match| array.include?(match) ? match : match.capitalize! }

   x = b.first.capitalize!
   b.join(" ")
   
end

	 

print titleize("an hello the world")



