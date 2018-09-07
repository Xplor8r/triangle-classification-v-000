class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def is_triangle?
    if !([a,b,c].max < [a,b,c].inject(:+)/2.0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
  
  def kind
    is_triangle?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "That is not a triangle!"
    end
  end

end


