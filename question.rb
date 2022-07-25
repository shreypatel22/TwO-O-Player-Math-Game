class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def get_input(current_player)
    puts "#{current_player.name}: What does #{@num1} + #{@num2} equal?"
    print "> "
    @answer = gets.chomp
  end

  def check_answer(answer)    
    @sum == @answer.to_i
  end


end