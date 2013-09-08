# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  def initialize
    @age = 0
    @oranges = 0
    @tree = []
    @height = 0
  end  
  def age
    @age = @age + 1
   end 
  def age!
    unless dead?
      self.age
    end    
  end

  def add_orange
    unless dead?
      value = rand(1..6)
      value.times {@tree << Orange.new}
    end  
  end  
  def dead?
    if @height >= 500  
      true
    else
      false  
    end
  end    
  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    return true unless @tree.empty?
  end

  def height
    @height = @height + rand(10..50) 
    if @height > 500
      @height = 500
    end  
  end  

  def controller
    age!
    height
    status
    if @age % 5 == 0
      pick_an_orange!
    end  
    if @age % 3 == 0
      add_orange
    end  
  end  
  def status
    puts "This is year: #{@age}"
    puts "There are: #{@tree.length} oranges on the tree"
    puts "The tree's height is currenty #{@height}"
    if dead?
      puts "The tree has died this year"
    end  
  end  
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?      
      orange = @tree.sample
    p orange
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize
    @diameter = diameter
  end
  def random_diameter 
    @diamter = rand(2..10)
  end
end

Tree = OrangeTree.new
until Tree.dead?
   Tree.controller
end



