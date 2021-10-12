class TemperatureTransfer
  attr_accessor :t

  def from_C_to_F!
    @t = (@t * 1.8) + 32
  end

  def from_C_to_K!
    @t += 273.15
  end

  def from_K_to_C!
    @t -= 273.15
  end

  def from_F_to_C!
    @t = (@t - 32) / 1.8
  end

  def from_F_to_K!
    @t = from_F_to_C!
    @t = from_C_to_K!
  end

  def from_K_to_F!
    @t = from_K_to_C!
    @t = from_C_to_F!
  end
end
