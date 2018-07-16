def dict_sort(some_array) # This "wraps" recursive_sort.
  recursive_dict_sort some_array, []
end

def recursive_dict_sort(unsorted_array, sorted_array)
  # Your fabulous code goes here.
  if unsorted_array.length == 0
    sorted_array
  else
  min_index = min_ind unsorted_array
  min_elem = unsorted_array.delete_at min_index
  sorted_array.push min_elem
  recursive_dict_sort unsorted_array, sorted_array
  end
end

def min_ind(array)
  min_ind = 0
  ind = 1
  while ind < array.length
    if (array[ind]).capitalize < (array [min_ind]).capitalize
      min_ind = ind
    end
    ind += 1
  end
  min_ind
end

puts dict_sort ['S','a','B']
