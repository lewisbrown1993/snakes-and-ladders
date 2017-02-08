class Game
  attr_reader :players, :current_player

  def initialize(players)
    @players = players
    @current_player = 0
  end
end