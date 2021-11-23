class Terminal
  def self.write(str)
    puts str
  end

  def self.read
    gets.chomp
  end

  def self.say_hello
    puts 'Hello, user! The temperature converter greets you.'
  end

  def self.clear
    system 'clear'
  end

  def self.again?
    write 'Convert again? (Y)'
    read == 'Y'
  end
end
