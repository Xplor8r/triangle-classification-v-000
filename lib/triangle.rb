class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a == 0 || b == 0 || c == 0
      begin
        raise TriangleError
      rescue TriangleError => 
        puts error.message
      end
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
    def message
      "That is not a Triangle!"
    end
  end

end


