require_relative '../src/aged'

RSpec.describe Aged do
  it 'should reduce the number of sell in and increase quality by 1' do
    quality = Quality.new(5)
    sell_in = SellIn.new(5)
    Aged.new().update(quality, sell_in)
    expect(quality).to eq(6)
    expect(sell_in).to eq(4)
  end
end