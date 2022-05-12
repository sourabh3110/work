def matchingCharacters(argument)
  matchingCharacters = {}
  argument.split('').each{|ch| matchingCharacters[ch] = 0}
  argument.split('').each{|ch| matchingCharacters[ch] += 1}
  matchingCharacters
end

def calculateNumericFromString(argument)
  charactar =  argument.split('')
  sum = 0
  for i in 0...charactar.size
    sum += charactar[i].to_i if charactar[i].match?(/[0-9]/)
  end
  sum
end

  p calculateNumericFromString('1234a3-/1?4@&!~9')