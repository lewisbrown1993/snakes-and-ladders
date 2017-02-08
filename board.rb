class Board

  attr_reader :squares, :features

  def initialize()
    @squares = Array.new(100, Square.new)
    @features = []
  end

  def add_feature(feature)
    @features << feature
  end


  # def square_has_feature?

  # end

end