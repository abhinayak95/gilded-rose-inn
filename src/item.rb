class Item
  attr_reader :type, :sell_in, :quality

  def initialize(name, type, sell_in, quality)
    @name = name
    @type = TypeFactory.get(type)
    @sell_in = SellIn.new(sell_in)
    @quality = Quality.new(quality)
  end

  def update
    @type.update(quality, sell_in)
  end
end