# quadcorev2.rb

module Equilateral
    def side_length
        @side_length = @left_side
    end
end

# base class
class Quadrilateral
	def initialize(leftside, topside, rightside, bottomside)
        @left_side = leftside
        @top_side = topside
        @right_side = rightside
        @bottom_side = bottomside 
   end

    def perimeter
        @perimeter = (@left_side + @top_side + @right_side + @bottom_side)
    end

end

class Rectangle < Quadrilateral
    def area
        @area = (@left_side * @top_side)
    end
end

class Trapezoid < Quadrilateral
end

class Square < Rectangle
    include Equilateral
end

class Rhombus < Trapezoid
    include Equilateral
end


#testing the inheritence
def test
    rect = Rectangle.new(1,2,1,2)
    puts rect.is_a? Quadrilateral
    puts not(rect.is_a? Trapezoid)
    puts rect.perimeter == 6  #new tests
    puts rect.area == 2

    squa = Square.new(1,1,1,1)
    puts squa.is_a? Rectangle
    puts squa.is_a? Quadrilateral
    puts not(squa.is_a? Rhombus)
    puts squa.perimeter == 4  #new tests
    puts squa.area == 1

    trap = Trapezoid.new(1,2,1,3)
    puts trap.is_a? Quadrilateral
    puts not(trap.is_a? Rectangle)
    puts trap.perimeter == 7  #new tests

    rhom = Rhombus.new(1,1,1,1)
    puts rhom.is_a? Quadrilateral
    puts rhom.is_a? Trapezoid
    puts not(rhom.is_a? Square)
    puts rhom.perimeter == 4  #new tests
    puts rhom.side_length == 1
end

#run the test
test
