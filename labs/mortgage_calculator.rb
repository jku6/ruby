require 'pry'

puts "Do you want to calculate your mortgage (y) (n)?"
response = gets.chomp

while response == "y"
	puts "What is the principle?"
	prin = gets.to_i

	puts "what is the interest rate?"
	rateyear = gets.to_f

	puts "How many years?"
	year = gets.to_i


	ratemonth = (rateyear/12)/100

	numofpayments = year * 12

	monthlypayment = ((ratemonth * prin)/(1 - (1 + ratemonth) ** (-numofpayments)))

	monthlypayment = monthlypayment.round(2)

	puts "Your monthly payment is #{monthlypayment}"

	puts "Do you want to calculate your mortgage (y) (n)?"
	response = gets.chomp

end

