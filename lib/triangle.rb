class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def is_triangle?(a,b,c)
    if !([a,b,c].max < [a,b,c].inject(:+)/2.0)
      raise TriangleError
    end
  end
  
  def kind
 
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end

end


