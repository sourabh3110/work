def sort(arr)
  arr.size.times do
    arr.size.times do |i|
      break if i == arr.size-1
      if (arr[i].size > arr[i+1].size)
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
  end
  arr
end

p sort(["123456789", "1234567","123456","12345","1234","123","12","1","12345678"])