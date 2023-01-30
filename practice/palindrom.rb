# def palindrome(argument)
#   argument = argument.split(/[a-z,A-Z]/)
#   argument = argument.join(' ')
#   argument.split(' ')
# end

def palindrome(arg)
  arg = arg.split(' ').join('').split('')
  newArg = []
  index = (arg.size() - 1)
  for i in arg
    newArg[index] = i
    index -= 1
  end
  return "palindrom" if newArg == arg
end

p palindrome("borrow or rob")