class Player
  attr_accessor :score
  attr_accessor :name
  /answer question/
  /alive? returns true if lives left/
  /to_s return name and score/
  def initialize
    puts "What is your name?"
    @name = gets.chomp
    @score = 3
  end
end

