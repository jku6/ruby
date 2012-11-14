require 'pry'

class Point

	attr_accessor :x, :y
	
	def initialize(x, y)
		@x = x
		@y = y
	end

	def to_s
		"#{x}, #{y}"
	end
end

points = []

# you can also loop saying 3.upto(7) this will loop 4 times
(1..10).each do |i|

	randomnum1 = Random.rand(1000)
	randomnum2 = Random.rand(1000)

	p = Point.new(randomnum1, randomnum2)

	points << p
end

# instead of this you can also do: with a class

# require 'pry'
# require 'active_support/all'

# class Wire
#   attr_accessor :points, :length
#   def initialize
#     @points = 10.times.map { Point.new }
#   end
#   def distance(p1, p2)
#     Math.sqrt(((p1.x - p2.x)**2) + ((p1.y - p2.y)**2))
#   end
#   def length
#     (points.length - 1).times.map {|x| distance(points[x], points[x+1])}.inject(&:+)
#   end
#   def to_s
#     "This wire is of length #{length}"
#   end
# end

# class Point
#   attr_accessor :x, :y
#   def initialize
#     @x = Random.rand(1000)
#     @y = Random.rand(1000)
#   end
# end

# puts Wire.new


wire1 = []

(0..8).each do |i|

	x1 = points[i].x
	y1 = points[i].y

	x2 = points[i+1].x
	y2 = points[i+1].y
	# square(((points.index(i).x) - (points.index(i+1).x)) + ((points.index(i).y) - (points.index(i+1).y)))

	distance = Math.sqrt((x1-x2)**2 + (y1 - y2)**2)
	wire1 << distance
end

total_distance = wire1.inject(&:+)

puts "this is the total distance: #{total_distance}"

binding.pry



