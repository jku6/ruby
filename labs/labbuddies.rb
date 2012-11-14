# require 'pry'

# name_array = ['Adrian', 'Larry', 'Jasmine', 'Raymond', 'Dustin', 'Aaron', 'Chris', 'Zahra', 'Avinash', 'Gaurav', 'Audric', 'Jonathan', 'Derrick', 'Tim', 'Chang', 'Marc', 'Thomas']
# other = {}

# puts "how many people to a group?"
# num = gets.to_i




# start_slice = 0
# end_slice = response - 1

# shuffled = name_array.shuffle


# while shuffled.length >= num

# sliced[i] = shuffled.slice(start_slice..end_slice)
# new_sliced = shuffled - sliced[i]

# i+=1
# end




# if new_sliced.length == 1
# 	other[i-1] << new_sliced[0]
# end

# other.each {|k,v|}


require 'pry'
require 'active_support/all' #rails gem

students = ['Adrian Bautista', 'Larry Buchanan', 'Jasmine Chabra', 'Raymond Chan', 'Dustin Coates', 'Aaron Fuchs', 'Chris Goodmacher', 'Zahra Jabini', 'Avinash Karnani', 'Gaurav Karnani', 'Audric Kim', 'Jonathan Ku', 'Derrick Lannaman', 'Tim LaTorre', 'Hsi-Chang Lin', 'Marc Whitman', 'Thomas Yang']
puts `clear`
puts "Group size?"
size = gets.to_f
is_lonely = (students.count % size.to_i) == 1

if is_lonely

	#truncate is opposite of ceil, brings a float to a int on the bottom: 5.1 -> 5

  ((students.count / size) - 1).truncate.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
  puts "Group z: #{students.to_sentence}"
else

	# ceil makes the float number and rounds it up to the higher int: 5.1 -> 6
	# times is like each, 10.times loops to times
  (students.count / size).ceil.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
end








