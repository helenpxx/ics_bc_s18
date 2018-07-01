puts "I was born at 22:23 on August 19th,2000. "
days = 11+30+31+30+31+365*13+366*4+31*3+28+30*2
min_not_in_days = 7+90+20*60+38
puts "Therefore I am " + (days*24*60*60+min_not_in_days*60).to_s + "seconds old."
