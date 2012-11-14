require 'pry'

class Protein < Food

	attr_accessor :animal
	
	def initialize(a, c, n, p)
		@animal = a
		@calories = c
		@number_servings = n
		@preptime = p


		# this will go up one node to call the parent variables
		#super(calories, servings, prep)
		
	end

	def to_s
		"#{animal}, #{calories}, #{number_servings}, #{preptime}"
	end
end