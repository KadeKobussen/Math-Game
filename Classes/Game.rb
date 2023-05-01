class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
    puts "#{player1.name} VS #{player2.name}"
  end

  def play
    current_player = players[0]
    other_player = players[1]
    puts "#{current_player.name} goes first."
    
    loop do 
      question = Question.new
      puts "#{current_player.name}: #{question.text}"
      answer = gets.chomp.to_i
      
      if answer == question.answer
        puts "#{current_player.name}: Yes! You are correct."
      else
        current_player.lives -= 1
        puts "#{current_player.name}: WRONG!"
      end
      
      if current_player.lives < 1
        puts "#{other_player.name} wins with a score of #{other_player.lives}/#{Question::MAX_LIVES}."
        puts "#{current_player.name} has been defeated with a score of #{current_player.lives}/#{Question::MAX_LIVES}."
        break
      end
      
      current_player, other_player = other_player, current_player
    end
  end

  def check_game_over
    players.each do |player|
      if player.lives < 1
        puts "#{player.name} has lost all their lives!"
        other_player = (players - [player])[0]
        puts "#{other_player.name} wins with a score of #{other_player.lives}!"
        return true
      end
    end
    false
  end
end

