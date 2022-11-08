class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a <= 0 || b <= 0 || c <= 0)
      
        raise TriangleError
      
        
    
    elsif (a + b <= c || a + c <= b || b + c <= a)
      
        raise TriangleError
      
       
      
    elsif (a == b && b == c)
      :equilateral
    elsif (a != b && b != c && c!= a)
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError

    def nonpositive_side_length
      "All side lengths must be positive values"
    end

    def triangle_inequality
      "This triangle breaks the triangle inequality rule"
    end    

  end
end

