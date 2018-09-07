class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def is_triangle?(a,b,c)
    [a,b,c].max < [a,b,c].sum/2.0
  end
  
  def kind
    if !is_triangle?
      raise TriangleError
    end
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


