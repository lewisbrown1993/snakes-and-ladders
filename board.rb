class Board

  attr_reader :squares
  
  def initialize()
    @squares = Array.new(100, Square.new)
  end

end