require_relative './from'
require_relative './to'
require_relative './transfer'
require_relative './enter'
require_relative './terminal'

class Program
    def run
        Terminal.say_hello
        from = TemperatureFrom.from
        while !TemperatureFrom.is_correct? from do 
            Terminal.clear
            from = TemperatureFrom.from
        end

        to = TemperatureTo.to
        while !TemperatureTo.is_correct? from, to do
            Terminal.clear
            to = TemperatureTo.to
        end

        t1 = TemperatureEnter.enter
        while !TemperatureEnter.is_float? t1 do
            Terminal.clear
            t1 = TemperatureEnter.enter
        end
        t1 = TemperatureEnter.to_float t1
        t2 = convert from, to, t1

        Terminal.print_answer from, to, t1, t2
    end

    def convert from, to, t1
        temperature = TemperatureTransfer.new
        temperature.t = t1

        case from
        when "C"
            if to == "F" then t2 = temperature.from_C_to_F!
            else t2 = temperature.from_C_to_K! end
        when "F"
            if to == "C" then t2 = temperature.from_F_to_C!
            else t2 = temperature.from_F_to_K! end
        when "K"
            if to == "C" then t2 = temperature.from_K_to_C!
            else t2 = temperature.from_K_to_F! end
        end
    end
end