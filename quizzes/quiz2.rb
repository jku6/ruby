require 'pry'

# x = 250
# y = 180000

# while x <= y
# 	x = x + 1
# 	z = x + x
# 	puts "#{z}"

# end

answer = ((250 + 180000)*(180000/2))
puts "the number is #{answer}"



colors = []
puts "enter a color or (q)uit"
color = gets.chomp
while color != "q"
	colors << color
	puts "enter a color or (q)uit"
	color = gets.chomp
end
puts "#{colors}"











