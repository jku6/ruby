require 'pry'

puts "Do you want to take a trip (y) (n)?"
response = gets.chomp

while response == "y"
	puts "How far are you going in miles?"
	distance = gets.to_f

	puts "How fast are you going?"
	speed = gets.to_f

	puts "How much is gas per gallon?"
	gasprice = gets.to_f

	puts "What is the MPG of their car?"
	mpg = gets.to_f

	puts "How much money they have?"
	cash = gets.to_f

	costoftrip = ((distance/mpg) * gasprice)
	time = distance/speed

	if costoftrip > cash
		puts "Sorry, you do not have enough money for the trip"
	else
		puts "You will have $#{cash - costoftrip} when you arrive in #{time} hours."
	end

	puts "Do you want to take a trip (y) (n)?"
	response = gets.chomp
end