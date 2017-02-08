class Game
  attr_reader :players, :current_player, :board

  def initialize(players)
    @players = players
    @current_player = 0
    @board = Board.new
  end

  def next_player
    @current_player += 1
    if @current_player >= @players.count
      @current_player = 0
    end
  end

  def activate_feature(feature, player)
    player.gamepiece.move_to(feature.end_position)
  end

  def take_turn(player)
    dice_roll = Dice.new.roll
    new_position = player.gamepiece.position + dice_roll
    player.gamepiece.move_to(new_position)

    # if @board.square_has_feature?(new_position) == true
    if @board.squares[new_position].feature != nil

      activate_feature(@board.squares[new_position].feature, player)
    end

    next_player()
  end

end