require_relative '../src/item'

RSpec.describe  do
  it 'should be able to create a new item' do
    item = Item.new('Pale Ale', 10, 10)
    expect(item).to be_an Item
  end

  context 'For updating update' do
    it 'should be able to update the item values' do
      item = Item.new('Old Ale', 10, 10)
      item.update

      expect(item.sell_in).to eq(9)
      expect(item.quality).to eq(9)
    end

    it 'should increase degradation once the sellin days have passed' do
      item = Item.new('Cat Ale', 0, 12)
      item.update

      expect(item.sell_in).to eq(0)
      expect(item.quality).to eq(10)
    end
  end

end