require 'pry'

puts "what is your name?"
name = gets.chomp

puts "first number?"
a = gets.to_f

puts "second number?"
b = gets.to_f

puts "third number?"
c = gets.to_f


d = (a+b)*c
e = a ** b
f = Math.sqrt(a-b)


puts "#{name}, your results are D=#{d}, E=#{e}, F=#{f}"