class Temperature
  attr_accessor :from, :to, :temp_value, :temp_converted

  def input_transfer_from!
    loop do
      Terminal.write 'Please enter from which scale do you want to translate (F, K, C)?'
      @from = Terminal.read
      break if is_correct? @from
    end
  end

  def input_transfer_to!
    loop do
      Terminal.write 'Please enter which scale do you want to convert (F, K, C)?'
      @to = Terminal.read
      break if is_correct?(@to) && @to != @from
    end
  end

  def enter_value!
    Terminal.write 'Enter the temperature'
    loop do
      @temp_value = Terminal.read
      break if is_float? @temp_value
    end
    @temp_value = @temp_value.to_f
  end

  def float?(suspect)
    Float suspect
    true
  rescue StandardError
    false
  end

  def correct?(suspect)
    %w[F K C].include? suspect
  end

  def convert!
    transfer = TemperatureTransfer.new
    transfer.t = @temp_value
    transfer.method = @from + @to
    @temp_converted = transfer.choose_method
    Terminal.write "Converted #{temp_value} in #{from} to #{temp_converted} in #{to}"
  end
end
