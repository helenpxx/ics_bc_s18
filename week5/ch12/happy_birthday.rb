def info string
  puts "What " + string + " were you born?"
  gets.chomp.to_i
end

year = info "year"
month = info "month"
day = info "day"
hour = info "hour"
minute = info "minute"
second = info "second"

birth = Time.new(year, month, day, minute, second)
time = Time.new
time_passed = time - birth

years = (time_passed/365/24/60/60).to_i
puts years
puts time_passed

while years > 0
  puts "SPANK"
  years -= 1
end
