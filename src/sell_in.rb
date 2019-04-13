class SellIn

  def initialize(value)
    @value = value
  end

  def downgrade_by(value)
    @value -= value
  end

  def ==(other)
    @value == other
  end
end