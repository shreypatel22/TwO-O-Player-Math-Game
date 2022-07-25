class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0
      load_new_round
    end
  end

  def load_new_round
    current_player = get_current_player

    question = Question.new()
    answer = question.get_input(current_player)
    correct = question.check_answer(answer)    

    update_life(correct, current_player)

    game_score(@player1, @player2)

    print_output 

  end

  def get_current_player
    if !@player1.current_player
      @player1.current_player = true
      @player2.current_player = false
      current_player = @player1
    else      
      @player2.current_player = true
      @player1.current_player = false
      current_player = @player2
    end
  end

  def update_life(correct, current_player)
    if !correct
      current_player.lives -= 1
      puts "#{current_player.name}: Really? Thats wrong!"
    else
      puts "#{current_player.name}: Woow! You are correct!"
    end
  end

  def game_score(player1, player2)
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def print_output
    if @player1.lives > 0 && @player2.lives > 0
      puts "------ NEW TURN ------"
    else
      puts "------ GAME OVER ------"
      puts "Goodbye!"
    end
  end

end