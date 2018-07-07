puts "Put a starting year"
starting = gets.chomp.to_i
puts "Put an ending year"
ending = gets.chomp.to_i
year = starting
puts "The leap years are: "
while year <= ending
  if year%100 == 0
    if year%400 == 0
     puts year.to_s
    end
  elsif year%4 == 0
    puts year.to_s
  end
  year += 1
end
