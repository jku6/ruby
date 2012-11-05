require 'pry'
# this is a comment


puts "What is your name?"
first = gets

# v1 normal string
puts "You typed in " + first

# v2 String interpolation
puts "You typed in #{first} "

# v3 single quotes, does not work
puts 'You typed in #{first}'




puts "Enter an integer?"
a = gets
a = a.to_i

puts "Enter a floating point number?"
b = gets
b = b.to_f

c = a + b
puts "The result of  #{a} summed with #{b} is #{c}"
# this is how to debug using pry
binding.pry










# age function
puts "What is your age?"
age = gets.to_i

if age < 5
	puts "You are a baby"
elsif (age >= 5) && (age < 18)
	puts "You are a minor"
else
	puts "You are an adult"
end



puts "Enter a letter"
letter = gets.chomp
# case statements
case letter
when "a"
	puts "You typed in a"
when "b"
	puts "You typed in b"
when "c"
	puts "You typed in c"
when "d"
	puts "You typed in d"
end


# looping
puts "Enter a starting number"
start = gets.to_i
puts "Enter an ending number"
stop = gets.to_i

while start <= stop
	puts "Counting #{start}"
	start += 1
	# start = start + 1

end


# methods
def square(a)
	a * a
end
def volume(l, w, h)
	l * w * h
end

puts "Length?"
length = gets.to_i
puts "Width?"
width = gets.to_i
puts "Height?"
height = gets.to_i
vol = volume(length, width, height)
puts "the volume of #{length} and #{width} and #{height} is #{vol}"


puts "Enter a number to square"
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"

#Contants in Ruby, capitalized letter
#Hello = 3

#class
#3.class
#nil.class























