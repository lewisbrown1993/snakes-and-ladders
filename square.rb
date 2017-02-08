class Square

  attr_reader :feature

  def initialize
    @feature = nil
  end

  def add_feature(feature)
    @feature = feature
  end

end