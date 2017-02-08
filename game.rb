class Game
  attr_reader :players, :current_player

  def initialize(players)
    @players = players
    @current_player = 0
  end

  def next_player
    @current_player += 1
    if @current_player >= @players.count
      @current_player = 0
    end
  end
end