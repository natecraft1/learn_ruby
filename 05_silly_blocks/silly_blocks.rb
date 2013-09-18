def reverser(&block)
	rev = block.call.reverse
	rev.split(' ').reverse.join(' ')
end

def adder(add=1, &block)
	d = block.call + add
end
puts reverser { "hello dolly" }

def repeater(time=1, &block)
	time.times { block.call }
end