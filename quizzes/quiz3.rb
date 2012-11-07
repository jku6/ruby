require 'pry'


class Student
	attr_accessor :name, :dob, :gender, :gpa, :major
	
	def initialize(n, d, g, p, m) 
		@name = n 
		@dob = d
		@gender = g 
		@gpa = p
		@major = m
	end

	def to_s
		"( #{name}, #{dob}, #{gender}, #{gpa}, #{major} )" 
	end
end

students = []

puts "Would you like to create a (s)tudent, or (q)uit?"
response = gets.chomp.downcase

while response != "q"

	puts "student name?"
	name = gets.chomp
	puts "dob?"
	dob = gets.chomp
	puts "gender?"
	gender = gets.chomp
	puts "gpa?"
	gpa = gets.to_f
	puts "major?"
	major = gets.chomp
	s = Student.new(name, dob, gender, gpa, major)
	students << s


	puts "Would you like to create a (s)tudent, or (q)uit?"
	response = gets.chomp.downcase

end

puts "#{students.join(', ')}"




