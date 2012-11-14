require 'pry'

class Carb < Food

	attr_accessor :grain
	
	def initialize(g, c, n, p)
		
		@grain = g
		@calories = c
		@number_servings = n
		@preptime = p

		# this will go up one node to call the parent variables
		#super(calories, servings, prep)

		
	end
	def to_s
		"#{grain}, #{calories}, #{number_servings}, #{preptime}"
	end
end