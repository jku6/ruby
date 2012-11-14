require 'pry'

puts "how many numbers?"
num = gets.to_i
puts `clear`


array1 = []
array2 = []
array3 = []

game = {}
game["1"] = array1
game["2"] = array2
game["3"] = array3



(1..num).each do |i|
	array1 << i
end



# puts array1.inject(&:"\n")

# array1.each do |i|
# 	puts i"\n"
# end

puts "would you like to (m)ove or (q)uit?"
response = gets.chomp

while response != 'q'

puts "from which array (1, 2, 3)?"
from = gets.chomp


puts "to which array (1, 2, 3)?"
to = gets.chomp

# if game[to].index(0) > game[from]
# 	puts "you cant enter "
game[to].unshift(game[from].slice(0))
game[from].shift

puts "would you like to (m)ove or (q)uit?"
response = gets.chomp

end


binding.pry

# 2\n3\n4\t1