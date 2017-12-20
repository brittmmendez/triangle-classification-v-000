class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one=side_one
    @side_two=side_two
    @side_three=side_three
    
  end

  def kind
      
      if @side_one==@side_two and @side_two==@side_three
          "equilateral"
      elsif @side_one==@side_two || @side_two==@side_three|| @side_one==@side_three
          "isosceles"
      else
        "scalene"
      end
    end
  end
  
  
class TriangleError < StandardError
  def zero_message
     "triangles with no size are illegal"
  end
  def negative_message
     "triangles with negative sides are illegal"
  end
  def inequality_message
     "triangles violating triangle inequality are illegal"
  end
 end
