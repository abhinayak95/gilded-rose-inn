require_relative './basic'

class TypeFactory
  def self.get(type)
    case type
    when :aged
      Aged.new
    when :conjured
      Conjured.new
    when :legendary
      Legendary.new
    else
      Basic.new
    end
  end
end