class Triangle
  def initialize(hypotenuse,sideA,sideB)
    @hypotenuse = hypotenuse
    @sideA = sideA
    @sideB = sideB
  end

  def valid
    if (@hypotenuse > (@sideA + @sideB) || @sideA > (@hypotenuse + @sideB) || @sideB > (@hypotenuse + @sideA)) &&
        (@hypotenuse.to_i.to_s != @hypotenuse && @sideA.to_i.to_s != @sideA && @sideB.to_i.to_s != @sideB)
      return false
    else
      return true
    end
  end

  def type
    if @hypotenuse == @sideA && @sideB == @sideA
      return "equilateral"
    elsif @hypotenuse == @sideA || @sideB == @sideA || @hypotenuse == @sideB
      return "isosceles"
    else
      return "scalene"
    end
  end
end
