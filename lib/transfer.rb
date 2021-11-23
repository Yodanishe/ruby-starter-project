class TemperatureTransfer
  attr_accessor :t, :method

  def choose_method
    case @method
    when 'CF'
      from_c_to_f!
    when 'CK'
      from_c_to_k!
    when 'KC'
      from_k_to_c!
    when 'FC'
      from_f_to_c!
    when 'FK'
      from_f_to_k!
    when 'KF'
      from_k_to_f!
    end
  end

  def from_c_to_f!
    @t = (@t * 1.8) + 32
  end

  def from_c_to_k!
    @t += 273.15
  end

  def from_k_to_c!
    @t -= 273.15
  end

  def from_f_to_c!
    @t = (@t - 32) / 1.8
  end

  def from_f_to_k!
    from_f_to_c!
    from_c_to_k!
  end

  def from_k_to_f!
    from_k_to_c!
    from_c_to_f!
  end
end
