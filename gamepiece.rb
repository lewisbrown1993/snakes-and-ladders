class Gamepiece
  attr_reader :position

  def initialize()
    @position = 0
  end

  def move_to(new_position)
    @position = new_position
  end

end