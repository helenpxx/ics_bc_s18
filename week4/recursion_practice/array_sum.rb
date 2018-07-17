def array_sum(array)
  if array.length == 1
    array[0]
  else
    array.pop + array_sum(array)
  end
end

puts array_sum [ 1, 3, 5] 
