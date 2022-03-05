# candidate ID = 91129

def numeric?(lookAhead)
  lookAhead.match?(/[[:digit:]]/)
end

def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

def punctuation_character?(lookAhead)
  lookAhead.match?(/[[:punct:]]/)
end

def a(arg)
  arr = arg.split("")
  sum = 0
  for i in 0...arg.split("").size
    if arr[i].match?(/[[:punct:]]/) || arr[i].match?(/[[:alpha:]]/)
      arr[i] = " "
    end
  end
  arr.to_s
  arr = arr.join('').split(' ')
  for i in 0...arr.size
    sum += arr[i].to_i
  end
  sum
end

puts a('Mynameis1so///urabh\\\///123rath:::ore246,,,,,Ilovecooking7219')