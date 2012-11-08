require 'pry'

# class Number
# 	attr_accessor :number
	
# 	def initialize(n) 
# 		@number = n
# 	end

# 	def to_s
# 		"( #{number} )" 
# 	end
# end

numbers = []

puts "Would you like to enter a (n)umber, or (q)uit?"
response = gets.chomp.downcase

while response != "q"

puts "number?"
number = gets.to_i
numbers << number

puts "Would you like to enter a (n)umber, or (q)uit?"
response = gets.chomp.downcase

end

puts "this is the old array #{numbers.join(', ')}"


def square(x)
 	x * x
end

#z = square(number)




puts "This is the new array #{numbers.map {|f| square(f)}.join(', ')}"

# farms.map {|f| f.name}.join(', ')

# map takes an array and creates a new array from it

# print out original array and new array



