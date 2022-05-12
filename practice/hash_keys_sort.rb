# def sort(arr)
#   arr.size.times do
#     arr.size.times do |i|
#       break if i == arr.size-1
#       if (arr[i].size > arr[i+1].size)
#         arr[i], arr[i+1] = arr[i+1], arr[i]
#       end
#     end
#   end
#   arr
# end

def sort(arr)
  for j in 0...arr.size
    for i in 0...arr.size
      break if i > (arr.size - 2)
      arr[i], arr[i+1] = arr[i+1], arr[i] if (arr[i].size > arr[i+1].size)
    end
  end
  arr
end

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [['c', 0],['d', 72]]
  Hash[key_value_pairs]
end

# p sort(["123456789", "1234567","123456","12345","1234","123","12","1","12345678"])
p artax