class Quality
  include Comparable
  attr_accessor :value

  def initialize(value)
    set(value)
  end

  def degrade_by(value)
    set(@value - value)
  end

  def upgrade_by(value)
    set(@value + value)
  end

  def <=>(other)
    @value <=> other
  end

  private
  def set(value)
    if value < 0
      @value = 0
    elsif value > 50
      @value = 50
    else
      @value = value
    end
  end
end