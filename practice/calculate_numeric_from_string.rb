  def calculateNumericFromString(argument)
    charactar =  argument.split('')
    sum = 0
    for i in 0...charactar.size
      sum += charactar[i].to_i
    end
    sum
  end