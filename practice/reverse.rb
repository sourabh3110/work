def reverse(argument)
  string = argument.split('')
  j = (string.size() - 1)
  reverse = []
  for i in string
    reverse[j] = i
    j-= 1
  end
  reverse
end
p reverse("sourabh")