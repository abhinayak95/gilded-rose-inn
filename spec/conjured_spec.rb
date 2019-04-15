require_relative '../src/conjured'

RSpec.describe Aged do
  it 'should reduce the number of sell in by 1 and reduce the quality by 2' do
    quality = Quality.new(5)
    sell_in = SellIn.new(5)
    Conjured.new().update(quality, sell_in)
    expect(quality.value).to eq(3)
    expect(sell_in.value).to eq(4)
  end

  it 'should reduce the number of sell in by 1 and reduce the quality by 4 if sell in is zero' do
    quality = Quality.new(5)
    sell_in = SellIn.new(1)
    Conjured.new().update(quality, sell_in)
    expect(quality.value).to eq(1)
    expect(sell_in.value).to eq(0)
  end
end