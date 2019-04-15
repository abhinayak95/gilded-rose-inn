class Basic
  def update(quality, sell_in)
    sell_in.reduce

    quality.degrade_by(1) if sell_in > 0
    quality.degrade_by(2) if sell_in <= 0
  end
end