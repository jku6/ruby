require 'pry'
class Person
	attr_accessor :name, :gender, :age 
	
	def initialize(n, g, a) 
		@name = n 
		@gender = g 
		@age = a
	end

	def to_s
		"#{name} is a #{gender}, and #{age} years old." 
	end
end


