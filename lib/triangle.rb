class Triangle 
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle?
    if !(side1 > 0 && side2 > 0 && side3 > 0 && ([side1, side2, side3].max < [side1, side2, side3].sum/2.0))
        raise TriangleError
    end
  end

  def kind
    is_triangle?
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Please check sides, this is not a valid triangle"
    end
  end
end
