class Terminal
  def self.say_hello
    puts 'Hello, user! The temperature converter greets you.'
  end

  def self.clear
    system 'clear'
  end

  def self.print_answer(from, to, t, t2)
    puts "#{t} #{from} = #{t2.round(2)} #{to}"
  end
end
