require_relative '../src/quality'

RSpec.describe Quality do
  it 'should be able to create a new Quality object' do
    expect(Quality.new(10)).to be_a Quality
  end

  it 'should be able to reduce the quality value' do
    quality = Quality.new(10)
    quality.degrade_by(2)
    expect(quality).to eq(8)
  end

  it 'should be able to increase the quality value' do
    quality = Quality.new(10)
    quality.upgrade_by(2)
    expect(quality).to eq(12)
  end

  it 'should not be more than 50' do
    expect(Quality.new(51)).to eq(50)
  end

  it 'should never go below zero' do
    expect(Quality.new(-1)).to eq(0)
  end
end