class Triangle

  attr_accessor :sideone, :sidetwo, :sidethree


  def initialize(sideone, sidetwo, sidethree)
    @sides = []
    @sides << sideone 
    @sides  << sidetwo 
    @sides << sidethree
  end
    
  def no_kind
    if  @sides[0] == 0 || @sides[1] == 0 || @sides[2] == 0
      return true
    elsif   @sides[0] < 0 && @sides[1] < 0 && @sides[2] < 0
      return true 
    elsif  (@sides[0] + @sides[1] <= @sides[2]) || (@sides[1] + @sides[2] <= @sides[0]) || (@sides[2] + @sides[0] <= @sides[1])
      return true
    end
 end
 
  
  def kind 
     if no_kind
      raise TriangleError
      elsif (@sides[0] == @sides[1] && @sides[0] != @sides[2]) || (@sides[1] == @sides[2] && @sides[0] != @sides[2]) || ((@sides[2] == @sides[0] && @sides[0] != @sides[1]))
      :isosceles
   elsif !(@sides[0] == @sides[1] && @sides[0] == @sides[2])
      :scalene
  # elsif @sides.length = 3
   elsif @sides[0] == @sides[1] && @sides[0] == @sides[2]
    :equilateral
    
   end 
  end

   

   class TriangleError < StandardError
       
       end

end
