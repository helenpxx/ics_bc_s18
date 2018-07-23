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

time = Time.new(year, month, day, minute, second)
time2 = time + 10**9
puts "You will be one billion seconds old at " + time2.to_s
