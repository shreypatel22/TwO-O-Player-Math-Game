class Player
  attr_accessor :name, :lives, :current_player

  def initialize(name)
    @name = name
    @lives = 3
    @current_player = false
  end  

end