require "pry"

class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c 
  end


  def kind
   triangle_inequality

    if (a==b) && (b==c)
      :equilateral
    elsif (a==b)||(a==c)||(b==c)
      :isosceles
    else
      :scalene
    end
  end

  def triangle_inequality
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end



  # def triangle_inequality
  #   sides = [a, b, c]
  #   rules = [(a+b>c), (a+c>b), (b+c>a)]
  #   sides.each do |side|
  #     if side <= 0
  #       rules << false
  #     end
  #     if real_triangle.include?(false)
  #       raise TriangleError
  #     end
  #   end
  # end





    class TriangleError < StandardError
      def message
        "These are the wrong numbers for a Triangle"
      end
    end



end

