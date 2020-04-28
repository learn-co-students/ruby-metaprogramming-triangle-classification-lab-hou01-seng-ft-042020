class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    triangle_validation
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
      :scalene
    end
  end

  def triangle_validation
    sides = [side1, side2, side3]
    rules = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    sides.each {|side|
      if side <= 0
        rules << false
      end
      if rules.include?(false)
        raise TriangleError
      end
    }
  end

  class TriangleError < StandardError
    def message
      "Please check sides, this is not a valid triangle"
    end
  end
end
