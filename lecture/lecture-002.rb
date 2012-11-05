# [1] pry(main)> []
# => []
# [2] pry(main)> {}
# => {}
# [3] pry(main)> colors = ['blue', 'green']
# => ["blue", "green"]
# [4] pry(main)> colors.class
# => Array
# [5] pry(main)> colors.push('purple')
# => ["blue", "green", "purple"]
# [6] pry(main)> colors
# => ["blue", "green", "purple"]
# [7] pry(main)> colors << "red"
# => ["blue", "green", "purple", "red"]
# [8] pry(main)> colors.pop
# => "red"
# [9] pry(main)> colors.pop()
# => "purple"
# [10] pry(main)> colors[0]
# => "blue"
# [11] pry(main)> colors << "red" << "orange" << "cyan"
# => ["blue", "green", "red", "orange", "cyan"]
# [12] pry(main)> colors.length
# => 5
# [13] pry(main)> colors.size
# => 5
# [14] pry(main)> colors[-1]
# => "cyan"
# [15] pry(main)> colors[1..3]
# => ["green", "red", "orange"]
# [16] pry(main)> 1..100
# => 1..100
# [17] pry(main)> (1..100).class
# => Range
# [18] pry(main)> (1..100).to
# NoMethodError: undefined method `to' for 1..100:Range
# from (pry):18:in `__pry__'
# [19] pry(main)> (1..100).to_a


# 20] pry(main)> ('a'..'z').to_a
# => ["a",
#  "b",
#  "c",
#  "d",
#  "e",
#  "f",
#  "g",
#  "h",
#  "i",
#  "j",
#  "k",
#  "l",
#  "m",
#  "n",
#  "o",
#  "p",
#  "q",
#  "r",
#  "s",
#  "t",
#  "u",
#  "v",
#  "w",
#  "x",
#  "y",
#  "z"]
# [21] pry(main)> 7.upto(20
# [21] pry(main)*   
# [21] pry(main)*   
# [21] pry(main)*   
# [21] pry(main)*   q
# SyntaxError: unexpected tIDENTIFIER, expecting ')'
# [21] pry(main)> q
# NameError: undefined local variable or method `q' for main:Object
# from (pry):21:in `__pry__'
# [22] pry(main)> 7.upto(20).to_a
# => [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# [23] pry(main)> 7.upto(20).to_a.to_s
# => "[7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]"

# array
# colors['blue', 'green', 'red']
# 0,1,3

# hash
# colors{'blue', 'green', 'red'}


# [31] pry(main)> person = {}
# => {}
# [32] pry(main)> person.class
# => Hash
# [33] pry(main)> person[:first] = "bill"
# => "bill"
# [34] pry(main)> person[:last] = "jones"
# => "jones"
# [35] pry(main)> person
# => {:first=>"bill", :last=>"jones"}
# [36] pry(main)> person[:age] = 20
# => 20
# [37] pry(main)> person[:gender] = "male"
# => "male"
# [38] pry(main)> person
# => {:first=>"bill", :last=>"jones", :age=>20, :gender=>"male"}
# [39] pry(main)> person[:last]
# => "jones"
# [40] pry(main)> 



require 'pry'

colors = ['blue', 'green', 'yellow']
puts "Enter a new color:"
color = gets.chomp
colors << color


person = {}
puts "last name?"
person[:last] = gets.chomp
puts "first name?"
person[:first] = gets.chomp
puts "age?"
person[:age] = gets.chomp



#for loop |color| can be called anything like |dog|, this is Enumeration
colors.each do |color|
	puts "the color is #{color}"
end

(1..1000).each do |x|
	puts "the number is #{x}"
end

#hash enumeration
person.each do |key, value|
	puts "the key is #{key} and value is #{value}"
end

binding.pry













