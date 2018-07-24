#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

roman = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
puts "Put a roman numeral to convert to integer:"
input = gets.chomp
num = 0
number = 0

while num < input.length
  if input[num] == "I" || input[num] == "V" || input[num] == "X"|| input[num] == "L" || input[num] == "C" || input[num] == "D"|| input[num] == "M"
    number += roman[input[num]]
    num += 1
  else
    puts "Please enter a valid roman numeral:"
    input = gets.chomp
  end
end

puts number
