class Player

  attr_reader :name, :gamepiece

  def initialize(name)
    @name = name
    @gamepiece = Gamepiece.new
  end

end