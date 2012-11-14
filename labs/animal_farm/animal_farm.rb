require 'pry'
load 'person.rb'
load 'farm.rb'
load 'animal.rb'

people = []
farms = []
animals = []

puts "Would you like to create a (p)erson, (a)nimal, or (f)arm, or (q)uit?"
response = gets.chomp.downcase

while response != "q"
	if (farms.length == 0) && (response != "f")
		puts "you must enter one farm first"
		response = "f"
	end

		puts "What is your name?"
		name = gets.chomp

	if response == "p"
		puts "What is your age?"
		age = gets.chomp
	end

	if response == "a"
		puts "What is your species?"
		species = gets.chomp
	end

	if (response == "p" || response == "a")
		puts "What is your gender?"
		gender = gets.chomp
	
		puts "which farm does this belong to: #{farms.map {|f| f.name}.join(', ')}?"
		farmname = gets.chomp
		# puts "which farm does this belong to: #{farms.keys.join(', ')}?"
	end

	case response
		when "p"
			people << Person.new(name, gender, age)
			
			farms.each do |x|
				if farmname == x.name
					x.people << name
				end
			end

			#farms[farm_name].people << person
		
		when "f"
			farms << Farm.new(name)
			#  hash style
			# farms = {}
			# farm = Farm.new(name)
			#farms[name] = farm
			

		when "a"
			animals << Animal.new(name, species, gender)

			farms.each do |x|
				if farmname == x.name
					x.animals << name
				end
			end
		end

	puts "Would you like to create a (p)erson, (a)nimal, or (f)arm, or (q)uit?"
	response = gets.chomp.downcase
	
end

if response == "q"
	puts "Goodbye!!"
	# x = 0
	# e = farms.length
	farms.each do |i|
		puts "#{i} #{i.people} #{i.animals}"
	end
	#binding.pry
end

# farms.map {|f| f.name}.join(', ')


# walking the graph down the line
# farms[1].people[0].age










