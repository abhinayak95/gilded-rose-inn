require_relative '../src/quality'

RSpec.describe Quality do
  it 'should be able to create a new Quality object' do
    expect(Quality.new(10)).to be_a Quality
  end

  it 'should be able to reduce the quality value' do
    quality = SellIn.new(10)
    quality.downgrade_by(5)
    expect(quality).to eq(5)
  end
end