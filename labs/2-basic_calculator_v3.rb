require 'pry'

def pow(num1, num2)
	num1 ** num2
end

def sqrt(num1)
	Math.sqrt(num1)
end

def add(num1,num2)
	num1+num2
end

def subtract(num1,num2)
	num1-num2
end

def multiply(num1,num2)
	num1*num2
end

def divide(num1,num2)
	num1/num2
end

action = "z"

while action!="q"
	puts "Would you like to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, squa(r)e, or (q)uit?"
	action = gets.chomp

	if action!="q"
		puts "Whats the first number?"
		num1 = gets.to_i

		if action!= "r"
			puts "Whats the second number?"
			num2 = gets.to_i
		end

		if action == "a"
			result = add(num1,num2)
		elsif action == "s"
			result = subtract(num1,num2)
		elsif action == "m"
			result = multiply(num1,num2)
		elsif action == "d"
			result = divide(num1,num2)	
		elsif action == "p"
			result = pow(num1,num2)
		elsif action == "r"
			result = sqrt(num1)		
		end
		
		puts "Your result is #{result}"
	end
end