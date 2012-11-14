require 'pry'

load 'food.rb'
load 'carb.rb'
load 'protein.rb'
load 'person.rb'

avmenu = {}
menu = {}
plate = []
people = {}
menus = []




puts "Would you like to create a plate of (f)ood or (q)uit?"
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
			plate << carb1
			

		when "p"
			protein1 = Protein.new(animal, calories, number_servings, preptime)
			plate << protein1
		
	end




	puts "Would you like to create a plate of (f)ood or (q)uit?"
	response = gets.chomp.downcase
end
	


puts "Would you like to create a (m)enu or choose (e)xisting menu, or (q)uit?"
response = gets.chomp.downcase

while response != "q"

	if (response == 'e') && (avmenu.empty? == true)
		puts "you must create one menu first"
		response = "m"
	end

	if response == 'e'
		puts "which menu #{avmenu.keys}?"
		matchname = gets.chomp

		#avmenu[matchname]

		puts "what day on the menu?"
		menuday = gets.chomp
		avmenu[matchname][menuday] = plate

	end

	if response == 'm'
		puts "what do you want to call it?"
		menuname = gets.chomp

		avmenu[menuname] = {}
		#avmenu = {menuname => {}}


		puts "what day on the menu?"
		menuday = gets.chomp
		avmenu[menuname][menuday] = plate
		#avmenu = {menuname => {menuday => plate}}

		# puts "which plates #{plate}?"
		# plateset = gets.chomp

	end

puts "Would you like to create a (m)enu or choose (e)xisting menu, or (q)uit?"
response = gets.chomp.downcase
#binding.pry
end

puts avmenu



puts "Would you like to create a (p)erson or (q)uit?"
response = gets.chomp.downcase

while response != "q"
	

	puts "what do you want to call your person?"
	name = gets.chomp

	puts "type, (k)id or (a)dult?"
	type = gets.chomp

	puts "which menu?"
	menu1 = gets.chomp


	person1 = Person.new(name, type, menus)

	people[name] = person1



	puts "Would you like to create a (p)erson or (q)uit?"
	response = gets.chomp.downcase

end









# totalcal = 0
# plate.each do |i|
# 	totalcal = (totalcal + (i.calories * i.number_servings))
# end

# totalprep = 0
# plate.each do |i|
# 	totalprep = totalprep + i.preptime
# end

# #binding.pry

# puts "#{totalcal}"
# puts "#{totalprep}"



