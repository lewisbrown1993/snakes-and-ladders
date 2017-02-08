class Dice

  attr_reader :value

  def initialize
    @value = nil # not, I suppose, really needed
  end

  def roll
    return rand(1..6)
  end

end