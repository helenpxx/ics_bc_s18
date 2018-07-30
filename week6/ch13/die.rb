class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  # Define a cheat method here
  def cheat
    puts "Set the number you want: "
    num = gets.chomp.to_i
    if num > 0 && num < 7
      @number_showing = num
    end
  end
end

die = Die.new
die.cheat
puts "The number facing is: #{die.showing}"
