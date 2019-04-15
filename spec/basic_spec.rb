require_relative '../src/basic'

RSpec.describe Basic do
  it 'should reduce the number of sell in and quality by 1' do
    quality = Quality.new(5)
    sell_in = SellIn.new(5)
    Basic.new().update(quality, sell_in)
    expect(quality.value).to eq(4)
    expect(sell_in.value).to eq(4)
  end
end