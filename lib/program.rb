require_relative './from'
require_relative './to'
require_relative './transfer'
require_relative './enter'
require_relative './terminal'

class Program
  def run
    Terminal.say_hello
    from = TemperatureFrom.from
    until TemperatureFrom.is_correct? from
      Terminal.clear
      from = TemperatureFrom.from
    end

    to = TemperatureTo.to
    until TemperatureTo.is_correct? from, to
      Terminal.clear
      to = TemperatureTo.to
    end

    t1 = TemperatureEnter.enter
    until TemperatureEnter.is_float? t1
      Terminal.clear
      t1 = TemperatureEnter.enter
    end
    t1 = TemperatureEnter.to_float t1
    t2 = convert from, to, t1

    Terminal.print_answer from, to, t1, t2
  end

  def convert(from, to, t1)
    temperature = TemperatureTransfer.new
    temperature.t = t1

    case from
    when 'C'
      t2 = if to == 'F' then temperature.from_C_to_F!
           else
             temperature.from_C_to_K!      end
    when 'F'
      t2 = if to == 'C' then temperature.from_F_to_C!
           else
             temperature.from_F_to_K!      end
    when 'K'
      t2 = if to == 'C' then temperature.from_K_to_C!
           else
             temperature.from_K_to_F!      end
    end
  end
end
