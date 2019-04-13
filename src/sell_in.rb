class SellIn

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def reduce
    @value -= 1
  end

  def ==(other)
    @value == other
  end

end