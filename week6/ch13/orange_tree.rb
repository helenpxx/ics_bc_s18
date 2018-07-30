class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    puts "You have planted an orage tree."
  end

  def one_year_passes
    @orange_count = 0
    @height += 1
    puts "Your tree is #{@height} meters high this year."
    @age += 1
    puts "Your tree is #{@age} years old."
    if @age > 14
      puts "Your tree died because it's too old."
      exit
    end
    if @age > 2
      @orange_count += @age
    end
    puts "It has #{@orange_count} oranges this year."
  end

  def height
    @height
  end

  def age
    @age
  end

  def orange_count
    @orange_count
  end

  def pick_orange
    if @orange_count <= 0
      puts "There are no more oranges to pick this year."
    else
      @orange_count -= 1
      puts "You've picked an orange from your tree, so delicious."
    end
  end
end

tree = OrangeTree.new
5.times do
  tree.one_year_passes
end
puts tree.orange_count
puts tree.height
6.times do
  tree.pick_orange
end
puts tree.age
12.times do
  tree.one_year_passes
end 
