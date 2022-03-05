def charactarOccurrence(argument,charactar)
  matchingCharacters = matchingCharacters(argument)
  for i in argument.split('')
    matchingCharacters.delete(i) if i != charactar
  end
  matchingCharacters
end