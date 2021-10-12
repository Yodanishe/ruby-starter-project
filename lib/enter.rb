class TemperatureEnter
  def self.enter
    puts 'Enter the temperature'
    t = gets.chomp
  end

  def self.is_float?(suspect)
    x = begin
      Float suspect
    rescue StandardError
      false
    end
    x ? true : false
  end

  def self.to_float(t)
    t = t.to_f
  end
end
