def matchingCharacters(argument)
  string = argument.split('')
  matchingCharacters = {}
  for i in string
    matchingCharacters[i] = 0
  end
  for i in string
    matchingCharacters[i] = matchingCharacters[i] + 1 if matchingCharacters.key?(i)
  end
  matchingCharacters
end

def nonMatchingCharactors(argument)
  string = argument.split('')
  matchingCharacters = matchingCharacters(argument)
  for i in string
    matchingCharacters.delete(i) if mc[i] != 1
  end
  matchingCharacters
end