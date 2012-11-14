require 'pry'


class Dog
	attr_accessor :name

	def initialize(n)
		@name = n
	end

	def to_s
		"#{name} is a dog!  He likes to go woof!"
	end

end


class Person

	attr_accessor :name, :gender, :dogs
	
	def initialize(n, g)
		@name = n
		@gender = g
		@dogs = []
	end

	def to_s
		"#{name} is a #{gender}"
	end

	#people.each {|p| puts "cool : #{p.gender}"}

	# def say_hello
	# 	"hello world"
	# end

	# def gender(g)
	# 	"you are #{g}"
	# end

	# def set_name(n)
	# 	# this is an instance variable and will stay with the object created such as p1
	# 	@first_name = n
	# end

	# def get_name
	# 	@first_name
	# end

	# def set_gender(g)
	# 	@gender = g
	# end

	# def get_gender
	# 	@gender
	# end
end

binding.pry