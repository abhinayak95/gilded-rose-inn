class SellIn

  def initialize(value)
    @value = value
  end

  def degrade_by(value)
    @value -= value
  end

  def ==(other)
    @value == other
  end
end