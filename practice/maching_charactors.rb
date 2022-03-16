def matchingCharacters(argument)
  matchingCharacters = {}
  argument.split('').each{|ch| matchingCharacters[ch] = 0}
  argument.split('').each{|ch| matchingCharacters[ch] += 1}
  matchingCharacters
end

def nonMatchingCharactors(argument)
  matchingCharacters = matchingCharacters(argument)
  string = argument.split('')
  for i in string
    matchingCharacters.delete(i) if matchingCharacters[i] != 1
  end
  matchingCharacters.first.first
end

p matchingCharacters("876556756756456545678987898987876765456787654678")