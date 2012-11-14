require 'pry'
require 'twitter'

Twitter.configure do |config|
	config.consumer_key = '2abPgrqi4PuwRbLe4fpVg'
	config.consumer_secret = 'XZvNuhom3zvo1SGTQc5BRV51e7HrqoMyyHi1dlVUI'
	config.oauth_token = '66822488-yUsFFIBXKugmkX6Es221jHTenzBPezHhhsKOY7Oc'
	config.oauth_token_secret = 'zvwtmwrbC3S7Dj7ln6piyG7DhE7lgZKKGVvw6HeGFgI'

end


(1..20).each do |i|
	air = " #{i}, from the command line @KTPrender  "
	Twitter.update(air)

end

# Twitter.search('#ruby -rt', :count=>20).results.map{|r| r.text}
# Twitter.search('@GA', :count=>20).results.map{|r| r.text}
# binding.pry
