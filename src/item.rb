class Item
  attr_accessor :type, :sell_in, :quality

  def initialize(type, sell_in, quality)
    @type = type
    @sell_in = sell_in
    @quality = quality
  end

  def update
    @sell_in -= 1
    @quality -= 1
  end
end