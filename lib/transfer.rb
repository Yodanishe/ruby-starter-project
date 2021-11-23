class TemperatureTransfer
  attr_accessor :t, :method

  def choose_method
    case @method
    when 'CF'
      from_C_to_F!
    when 'CK'
      from_C_to_K!
    when 'KC'
      from_K_to_C!
    when 'FC'
      from_F_to_C!
    when 'FK'
      from_F_to_K!
    when 'KF'
      from_K_to_F!
    end
  end

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
    from_F_to_C!
    from_C_to_K!
  end

  def from_K_to_F!
    from_K_to_C!
    from_C_to_F!
  end
end
