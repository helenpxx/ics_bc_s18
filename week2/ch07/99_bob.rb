number = 99
while number != 2
  puts number.to_s + " bottles of beer on the wall, " + number.to_s + " bottles of beer."
  puts "Take one down and pass it around, " + (number-1).to_s + " bottles of beer on the wall."
  puts ""
  number -= 1
end
puts "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall."
puts ""
puts "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
