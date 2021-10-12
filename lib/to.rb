class TemperatureTo
  def self.to
    puts 'Please enter which scale do you want to convert (F, K, C)?'
    to = gets.chomp
  end

  def self.is_correct?(from, suspect)
    if (suspect == 'F') || (suspect == 'K') || (suspect == 'C')
      from != suspect
    else
      false end
  end
end
