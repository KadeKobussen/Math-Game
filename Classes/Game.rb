class Game
  attr_reader :players
  /game loop/
  def initialize(player1, player2)
    @players = [player1, player2]
    puts "#{player1} VS #{player2}"
  end

 

  def check_game_over
    players.each do |player|
      if player.score < 1
        puts "#{player.name} has lost all their lives!"
        other_player = (players - [player])[0]
        puts "#{other_player.name} wins with a score of #{other_player.score}!"
        return true
      end
    end
    false
  end

end

