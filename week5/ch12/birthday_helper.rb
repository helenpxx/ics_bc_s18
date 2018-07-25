birthday = Hash.new
f = File.new("birthday_helper_input.txt")
f.each { |line| birthday[line.split(',', 2)[0]] = (line.split(',', 2)[1])[-13,13]}
puts birthday["Christopher Lloyd"]
