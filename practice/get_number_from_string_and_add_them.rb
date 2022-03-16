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
    for i in 0...arr.size
      if arr[i].match?(/\D/)
        arr[i] = " "
      end
    end
    arr = arr.join('')
    arr = arr.split(' ')
    sum = 0
  arr.size.times do |i|
    sum += arr[i].to_i
  end
  sum
end

def b(arg)
  arr = arg.gsub(/\D/,' ').split('')
  arr = arr.join('').split(' ')

  sum = 0
  for i in 0...arr.size
    sum += arr[i].to_i
  end
  sum
end

p a('41jhh2//\\3klk44kjhbxc9834nmkmdcv834j2873634t973y3h5jfij9eyfgr4987656r3fb2njduisf')
p b('41jhh2//\\3klk44kjhbxc9834nmkmdcv834j2873634t973y3h5jfij9eyfgr4987656r3fb2njduisf')