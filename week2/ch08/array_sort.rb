words = []
puts "Puts words: "
while true
  input = gets.chomp
  if input == ""
    break
  end
  words.push input
end
puts words.sort
