require 'pry'


class Protein

	attr_accessor :calories_per_servings, :gender, :age
	
	def initialize(n, g, a)
		@name = n
		@gender = g
		@age = a
	end
	def to_s
		"#{name} is a #{gender} and is #{age}"
	end
end


class Carb

	attr_accessor :name, :gender, :age
	
	def initialize(n, g, a)
		@name = n
		@gender = g
		@age = a
	end
	def to_s
		"#{name} is a #{gender} and is #{age}"
	end
end