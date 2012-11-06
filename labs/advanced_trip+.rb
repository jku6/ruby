require "pry"

# distance = nil
# cash = nil
# ppg = nil
# mpg = nil
# speed = nil

puts "How far they are going (miles)?"
distance = gets.to_f

puts "How fast they are going? mph"
speed = gets.to_f

puts "How much is gas per gallon at the start?"
startppg = gets.to_f

puts "How much is gas per gallon at the end?"
endppg = gets.to_f

puts "What is the MPG of their car?"
mpg = gets.to_f

puts "How much money they have?"
cash = gets.to_f

while startppg <= endppg
	startppg = startppg + 0.1
	amount = startppg / mpg * distance;
	#startppg..endppg.step(0.1).each do |a|
	
def trip_calculator(distance, speed, startppg, endppg, mpg, cash, amount)
	if cash < amount
	
		nil
	else
		money_remaining = cash - amount
		time_it_takes_to_complete_trip = distance/speed
		[money_remaining, time_it_takes_to_complete_trip]
	end
end

results = trip_calculator(distance, speed, startppg, endppg, mpg, cash, amount)

	if results != nil
		puts "With gas at #{startppg.round(2)} You will have $#{results[0].round(2)} when you arrive in #{"%0.02f" % results[1]} hours."
	else
		puts "Sorry, you do not have enough money for the trip."
	end
end