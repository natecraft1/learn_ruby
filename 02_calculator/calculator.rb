def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)

	array.any? ? array.inject(:+) : 0
end

def multiply(x, y)
 	x * y
end

def power(x, y)
	x**y
end

def factorial(x)
	(x == 0) ? 1 : x*(factorial(x-1))
end


