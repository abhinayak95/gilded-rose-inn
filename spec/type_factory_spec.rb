require_relative '../src/type_factory'

RSpec.describe TypeFactory do
  it 'should create a new basic type object' do
    expect(TypeFactory.get('Pale Ale')).to be_a BasicType
  end
end