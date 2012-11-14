require 'pry'

load 'food.rb'
load 'carb.rb'
load 'protein.rb'


dinner = []


puts "Would you like to create a (f)ood or (q)uit?"
response = gets.chomp.downcase

while response != "q"
	puts "would you like to create a (c)arb or (p)rotein?"
	type = gets.chomp


	puts "how many calories per serving?"
	calories = gets.to_i

	puts "number of servings?"
	number_servings = gets.to_i

	puts "how long is the prep time?"
	preptime = gets.to_i

	if type == "c"
		puts "what kind of grain?"
		grain = gets.chomp
	end

	if type == "p"
		puts "What kind of animal?"
		animal = gets.chomp
	end

	case type
		when "c"
			carb1 = Carb.new(grain, calories, number_servings, preptime)
			dinner << carb1
			

		when "p"
			protein1 = Protein.new(animal, calories, number_servings, preptime)
			dinner << protein1
		
	end


	puts "Would you like to create a (f)ood or (q)uit?"
	response = gets.chomp.downcase
end

# def totalcal(a, b)
# 	a * b

# end
totalcal = 0
dinner.each do |i|
	totalcal = (totalcal + (i.calories * i.number_servings))
end

totalprep = 0
dinner.each do |i|
	totalprep = totalprep + i.preptime
end

#binding.pry

puts "total calories: #{totalcal}"
puts "total prep time: #{totalprep}"



