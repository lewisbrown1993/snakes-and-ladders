class Dice

  attr_reader :value

  def initialize
    @value = nil
  end

  def roll
    return rand(1..6)
  end

end