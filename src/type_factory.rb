require_relative './basic_type'

class TypeFactory
  def self.get(type)
    case type
    when 'Aged Brie'
      AgedBrie.new
    when 'Sulfuras'

    else
      BasicType.new
    end
  end
end