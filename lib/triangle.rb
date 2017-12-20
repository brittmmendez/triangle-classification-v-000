class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one=side_one
    @side_two=side_two
    @side_three=side_three
  end

  def kind
    self.not_valid?
    if @side_one==@side_two || @side_two==@side_three|| @side_one==@side_three
        "isosceles"
    elsif @side_one==@side_two and @side_two==@side_three
            "equilateral"

    else
      "scalene"
    end
  end

  def not_valid?
    if @side_one=0 || @side_two=0||  @side_three=0
      begin
        raise TriangleError
      rescue TriangleError=>error
        puts error.zero_message
      end
    elsif @side_one<0 || @side_two<0||  @side_three<0
      begin
        raise TriangleError
      rescue TriangleError=>error
        puts error.negative_message
      end
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
