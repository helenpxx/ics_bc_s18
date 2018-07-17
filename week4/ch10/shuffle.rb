def shuffle(some_array)
   # This "wraps" recursive_sort.
  original = some_array
  new_array = recursive_shuffle some_array, []
  if some_array == new_array
    shuffle some_array
  end
  new_array
end

def recursive_shuffle(unshuffled_array, shuffled_array)
  # Your fabulous code goes here.
  if unshuffled_array.length == 0
    shuffled_array
  else
  len = unshuffled_array.length
  random_index = rand(len)
  elem = unshuffled_array.delete_at random_index
  shuffled_array.push elem
  recursive_shuffle unshuffled_array, shuffled_array
  end
end

puts shuffle ['a','b','c','d']
