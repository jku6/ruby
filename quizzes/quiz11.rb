require 'test/unit'
require 'pry'




class MyTest 

	def test_string
		x = Mystring.length('hello world')
		assert_equal(11,x, "should be 11")
	end

end

