class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
    def is_triangle?(a,b,c)
  [a,b,c].max < [a,b,c].sum/2.0
end
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "That is not a Triangle!"
    end
  end

end


