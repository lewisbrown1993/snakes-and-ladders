class Board

  attr_reader :squares, :features

  def initialize()
    @squares = Array.new(100, Square.new)
    # @features = []
  end

  def add_feature(feature)
    # @features << feature
    @squares[feature.start_position].add_feature(feature)
  end

  def square_has_feature?(number)
    if @squares[number].feature == nil
      return false
    else
      return true
    end
  end

end