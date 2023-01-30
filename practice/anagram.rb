def anagram(strOne, strTwo)
  if strOne.split('').sort == strTwo.split('').sort
    puts 'anagarm'
  else
    puts 'not anagram'
  end
end