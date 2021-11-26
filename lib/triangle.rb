class Triangle
  # write code here
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def kind
    if (@side1 >= @side2 + @side3 || @side2 >= @side3 + @side1) || @side3 >= @side1 + @side2
      raise TriangleError
    elsif (@side1 == 0 || @side2 == 0) || @side3 ==0
      raise TriangleError
    else
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 
        :isosceles
      elsif @side2 == @side3
        :isosceles
      else
        :scalene
      end
    end

  end

  class TriangleError < StandardError
      puts "Not a triangle: no sides can have a length of 0, and the sum of two sides must always exceed the length of the third side."
  end

end
