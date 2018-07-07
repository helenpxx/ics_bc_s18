line_width = 30
puts "Table of Contents".center(line_width*2)
chapters = [["Chapter1: Getting started", 1], ["Chapter 2: Numbers", 9], ["Chapter 3: Letters", 13]]
chapters.each do |chapter|
  puts chapter[0].ljust(line_width) + chapter[1].to_s.rjust(line_width)
end
