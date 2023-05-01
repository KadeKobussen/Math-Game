class Player
  attr_accessor :score
  attr_accessor :name
  attr_accessor :lives
  
  def initialize
    puts "What is your name?"
    @name = gets.chomp
    @lives = 3
    @score = 0
  end
  
  def alive?
    @lives > 0
  end
  
  def to_s
    "#{name}: #{@score} points, #{@lives} lives left"
  end
end


