class Triangle
  # write code here
attr_reader :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end 

def kind
  if (side1 + side2 <= side3) || (side2 + side3 <= side1) ||  (side1 + side3 <= side2) || side1 <= 0 || side2 <= 0 || side3 <= 0 
    # begin
      raise TriangleError
    # rescue TriangleError=> error
    #    puts error.message
    #  end
  elsif  
    side1 == side2 && side2 == side3 
    return :equilateral
  elsif  
    side1 == side2 || side1 == side3 || side2 == side3
    return :isosceles
  elsif  
    side1 != side2 && side2 != side3 
    return  :scalene
  end
end

  class TriangleError < StandardError
    # triangle error code
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. \n Further, each side must be larger than 0."
    end
  end 

end
