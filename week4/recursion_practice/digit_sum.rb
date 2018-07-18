def digit_sum(num, len)
  if len == 1
    num
  else
    num%10 + digit_sum(num/10, len-1)
  end
end

puts digit_sum 819, 3
