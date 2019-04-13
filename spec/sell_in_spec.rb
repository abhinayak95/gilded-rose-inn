require_relative '../src/sell_in'

RSpec.describe SellIn do
  it 'should be able to create a new Quality object' do
    expect(SellIn.new(10)).to be_a SellIn
  end

  it 'should be able to reduce the sell_in value' do
    sell_in = SellIn.new(10)
    sell_in.reduce
    expect(sell_in).to eq(9)
  end
end