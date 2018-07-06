while true
  you_say = gets.chomp
  if you_say == "BYE"
    break
  end
  if you_say != you_say.upcase
      puts "HUH?! SPEAK UP, SONNY!"
  else
      puts "NO, NOT SINCE 1938! " + (rand(21)+1930).to_s
  end
end
