require 'pry'


module Work
	def fix_bugs
		"fixing bugs"
	end

	def submit_code
		"submit code"
	end
end

module Play
	def ping_pong
		"ping pong"
	end

	def goof_off
		"goof off"
	end
end

class Employee
	def submit_time_card
		"submit time card"
	end

end


class Dev < Employee
	include Work
	include Play


	def codes #instance method, you can only call an instance method on a object: d1.codes
		puts "i am coding here"
	end

	def self.snack #class method, you can call it like: Dev.snack
		puts "i am snacking"

	end
end



class Calc

	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Calc.square(x)
		x * x
	end

	def sum #instance method
		numbers.inject(&:+)
	end
end

