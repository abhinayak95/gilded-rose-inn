class Item
  attr_reader :type, :sell_in, :quality

  def initialize(type, sell_in, quality)
    @type = type
    @sell_in = SellIn.new(sell_in)
    @quality = Quality.new(quality)
  end

  def update
    @sell_in.downgrade_by(1) unless @sell_in == 0
    @quality.downgrade_by(2) if @sell_in == 0
    @quality.downgrade_by(1) if @sell_in != 0
  end
end