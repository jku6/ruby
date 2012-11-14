require 'pry'

class Employee
	attr_accessor :name, :employee_id
end

class Dev < Employee
	attr_accessor :language
end

class JuniorDev < Dev
	# attr_accessor :name, :employee_id

	def fix_bugs

		puts "#{name} with an id of #{employee_id} is fixing bugs"

	end

end


class SeniorDev < Dev
	# attr_accessor :name, :employee_id

	def delegate_bug_fixing

		puts "#{name} with an id of #{employee_id} is telling jr devs to fix bugs"

	end

end

class QualityAssurance < Employee
	# attr_accessor :name, :employee_id

	def spot_bugs

		puts "#{name} with an id of #{employee_id} is spotting bugs"

	end

end

binding.pry
