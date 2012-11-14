require 'pry'

class Person

	attr_accessor :name, :type, :menus
	
	def initialize(n, t, m)
		@name = n
		@type = t
		@menus = []

		
	end
	# def to_s
	# 	"( #{calories}, #{number_servings}, #{preptime} )"
	# end
end