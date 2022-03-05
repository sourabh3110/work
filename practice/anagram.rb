def anagram(argument1, argument2)
  if argument1.split('').sort == argument2.split('').sort
    puts 'anagarm'
  else
    puts 'not anagram'
  end
end