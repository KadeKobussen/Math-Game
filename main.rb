require_relative 'Classes/Game'
require_relative 'Classes/Player'
require_relative 'Classes/Question'

player1 = Player.new
player2 = Player.new

game = Game.new(player1, player2)
game.play

if game.check_game_over
  puts "Game over!"
else
  puts "Thanks for playing!"
end