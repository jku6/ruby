require 'pry'

puts "(n)umber or (q)uit"
response = gets.chomp

while response != 'q'

	puts "you typed in #{response}"
	#response = response.to_i

	begin
	puts "entering in begin"
	response.times {puts "x"}
	rescue
		puts "entering in rescue"
		response = response.to_i
		retry # may cause infinite loop because it loops back to begin
	end

	# you put in raise to cause an exception if someone enters something weird
	if response == "r"
		raise "looks like an error"
	end

	puts "(n)umber or (q)uit"
	response = gets.chomp

end