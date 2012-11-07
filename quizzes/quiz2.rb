require 'pry'



answer = ((250 + 180000)*(180000/2))
puts "the number is #{answer}"

# this sums up all of the numbers between 250 and 180000
total = 0
(250..180000).each do |i|
	total += i
end
puts "#{total}"




colors = []
puts "enter a color or (q)uit"
color = gets.chomp
while color != "q"
	colors << color
	puts "enter a color or (q)uit"
	color = gets.chomp
end
puts "#{colors}"











