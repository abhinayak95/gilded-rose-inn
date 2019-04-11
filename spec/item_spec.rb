require_relative '../src/item'

RSpec.describe  do
  it 'should be able to create a new item' do
    item = Item.new('Pale Ale', 10, 10)
    expect(item.type).to eq('Pale Ale')
    expect(item.sell_in).to eq(10)
    expect(item.quality).to eq(10)
  end

  context 'For updating update' do
    it 'should be able to update the item values' do
      item = Item.new('Old Ale', 10, 10)
      item.update
      expect(item.sell_in).to eq(9)
      expect(item.quality).to eq(9)
    end
  end

end