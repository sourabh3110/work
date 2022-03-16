def create_array
  arr = []
  for i in 0...100
    arr[i] = i+1
    arr.delete(10)
  end
  arr.compact
end

def missing_number(array)
  for i in array
    return i+1 if array[i] != i+1
  end
end

p "missing number is #{missing_number(create_array)}"