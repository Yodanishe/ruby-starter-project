require_relative './transfer'
require_relative './temperature'
require_relative './terminal'

class Program
  def run
    Terminal.say_hello
    prog = Temperature.new
    loop do
      prog.input_transfer_from!
      prog.input_transfer_to!
      prog.enter_value!
      prog.convert!
      break unless Terminal.again?
    end
  end
end
