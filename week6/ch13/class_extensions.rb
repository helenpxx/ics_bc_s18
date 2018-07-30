class Array
  # Your shuffle method goes here
  def shuffle
     # This "wraps" recursive_sort.
    original = self
    new_array = recursive_shuffle self, []
    if self == new_array
      shuffle self
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
end
puts ['a','b','c','d'].shuffle

class Integer
  # Your factorial and to_roman methods go here
  def factorial
    if self < 0
  return 'You can\'t take the factorial of a negative number!' end
  if self <= 1
    1
  else
      self * (self-1).factorial
  end
end
end
puts 5.factorial

class Integer
def to_roman
  translations = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
    100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
    5 => 'V', 4 => 'IV', 1 => 'I' }
  roman_numeral = ""
  remainder = self

  translations.each do |number, roman|
    quotient = remainder / number
    roman_numeral += roman * quotient
    remainder = remainder % number
  end

roman_numeral
end
end
puts 5478.to_roman
