class TemperatureFrom
  def self.from
    puts 'Please enter from which scale do you want to translate (F, K, C)?'
    from = gets.chomp
  end

  def self.is_correct?(suspect)
    %w[F K C].include?(suspect)
  end
end
