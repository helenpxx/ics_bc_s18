def grandfather_clock &block
hour = Time.new.hour
  if hour == 0
    time = 12
  elsif hour > 12
    time = hour - 12
  else
    time = hour
  end
time.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
