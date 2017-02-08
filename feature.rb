class Feature
  attr_reader :type, :start_position, :end_position

  def initialize(type, start_position, end_position)
    @start_position = start_position
    @end_position = end_position
    @type = type
  end
end