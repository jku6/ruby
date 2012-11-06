class Person

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


puts "Create a (p)erson or (q)uit?"
persontype = gets.chomp
people = []

while persontype != "q"

	puts "name?"
	name = gets.chomp
	puts "age?"
	age = gets.to_i
	puts "gender?"
	gender = gets.chomp

	z = Person.new(name, gender, age)
	people << z

	puts "Create a (p)erson or (q)uit?"
	persontype = gets.chomp

end

puts "#{people.join(', ')}"

