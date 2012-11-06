require "pry"


ntrain = ["times square", "34th", "28th", "23rd", "union square"]
ltrain = ["8th", "6th", "union square", "3rd", "1st"]
sixtrain = ["grand central", "33rd", "28th", "23rd", "union square"]

# this is another way to do it
# mta{}
# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

# puts "what train do you want to get on: #{mta.keys.join(', ')}?"
# start_train = gets.chomp.to_sym
# puts "which stop: #{mta[start_train].join(', ')}?"
# stop_a = gets.chomp

# puts "what train do you want to get off: #{mta.keys.join(', ')}?"
# stop_train = gets.chomp.to_sym
# puts "which stop: #{mta[stop_train].join(', ')}?"
# stop_b = gets.chomp

# intersection = (mta[start_train] & mta[stop_train]).first

# stop_a_index = mta[start_train].index(stop_a)
# stop_a_intersection_index = mta[start_train].index(intersection)
# trip_a_length = (stop_a_index - stop_a_intersection_index).abs




puts "Which train n, l, s?"
train = gets.chomp

puts "switch on n, l, s or no?"
train2 = gets.chomp

puts "Where to get on?"
geton = gets.chomp

puts "Where to get off?"
getoff = gets.chomp


intersection = ntrain & ltrain & sixtrain
intersection = intersection.join('')

case train 
when "n"
	train = ntrain
	
when"l"
	train = ltrain
	
when "s"
	train = sixtrain
	
end


case train2
when "n"
	train2 = ntrain
	# getoff = ntrain.index(getoff)
when "l"
	train2 = ltrain
	# getoff = ltrain.index(getoff)
when "s"
	train2 = sixtrain
	# getoff = sixtrain.index(getoff)
end

if train != train2
	
	numstops = (train.index(geton) - train.index(intersection.to_s)).abs + (train2.index(intersection.to_s) - train2.index(getoff)).abs
elsif train == train2
	numstops = (train.index(getoff) - train.index(geton)).abs
end


puts "It will take #{numstops} stops"
