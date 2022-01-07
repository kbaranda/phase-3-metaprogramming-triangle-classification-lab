# require "pry"
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a > 0 && b > 0 && c > 0 && a + b > c && b + c > a && c + a > b
      if a == b && b == c
        return :equilateral
      elsif a == b || a == c || b == c
        return :isosceles
      elsif a != b && b != c
        return :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError 
    def message
      return "You aren\'t a triangle"
    end
  end
end
