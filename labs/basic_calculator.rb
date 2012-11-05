require 'pry'


def add(a, b)
	a + b
end

def subtract(c, d)
	c - d
end

puts "Do you want to (a)dd, (s)ubtract or (q)uit?"
x = gets.chomp

while x != "q"

	puts "Enter first number"
	y = gets.to_i
	puts "Enter second number"
	z = gets.to_i

	if x == "a"
		adding = add(y, z)
		puts "The Result is #{adding}"
	elsif x == "s" 
		subtracting = subtract(y, z)
		puts "The Result is #{subtracting}"
	end


end

