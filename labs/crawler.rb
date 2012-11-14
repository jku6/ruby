require 'HTTParty'
require 'pry'

class Crawler
	attr_accessor :url, :body, :words, :histogram
	
	def initialize(u)
		@url = u
		@histogram = Hash.new(0)

		parse

		words.each{|w| @histogram[w.downcase] +=1}
		@histogram = @histogram.sort_by {|key, value| value}.reverse
	end
	def parse
		@body = HTTParty.get(@url)
		@words = @body.split
	end

	def word_count
		@words.count
	end

	def count_by_name(name)
		words.select{|w| w.downcase == name}.count
	end

	def obama
		count_by_name('obama')
	end

	def romney
		count_by_name('romney')
	end




	
	# def words
	# 	@body.split(' ').count
	# end

	# def vowals
	# 	@body.count('aeiou')
	# end
	# def consonants
	# 	@body.count('a-z') - @body.count('aeiou')
	# end
	# def obama
	# 	@body.split(' ').count('obama')
	# end

	# def romney
	# end

	

end



c1 = Crawler.new("http://www.cnn.com")
c2 = Crawler.new('http://www.msnbc.com')

c1.parse
puts "#{c1.body.split}"


puts "#{c1.url}"

puts c1.words

puts c1.vowals
puts c1.consonants
#puts ('a'..'z').to_a.join()


puts c1.obama 
# c1.romney how many
# c1.histogram = {}  a= 100, the =250, hello = 175 #sort from high to low

