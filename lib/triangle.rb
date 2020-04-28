class Triangle
  attr_accessor :length1, :length2, :length3 
 
  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
  end 

  def kind
  real_triangle 
  if @length1 == @length2 && @length2 == @length3
    :equilateral
  elsif @length1 == @length2 or @length2 == @length3 or @length1== @length3 
     :isosceles
  else
     :scalene 
    end 
  end 

  def real_triangle 
    real_triangle = [(@length1 + @length2 > @length3), (@length1 + @length3 > @length2), (@length2 + @length3 > @length1)]
    lengths_array=[@length1, @length2, @length3]
    lengths_array.each do |length_side|
      real_triangle << false if length_side <= 0 
        raise TriangleError if real_triangle.include?(false)
      end 
    end


  # if length1 + length2 < length3 && length1 <0 ||length 2 < 0 || length3 <0  
  #   begin
  #     raise TriangleError 
  #   rescue TriangleError => error
  #       puts error.message
  #   end
  # else
    

  class TriangleError < StandardError  
  end
end 
