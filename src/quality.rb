class Quality

  def initialize(value)
    @value = value if value <= 50
    @value = 50 if value > 50
  end

  def degrade_by(value)
    @value -= value
  end

  def ==(other)
    @value == other
  end
end