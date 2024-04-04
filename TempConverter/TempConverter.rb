class TempConvert
    def initialize(temperature, unit)
            @temp = temperature.to_i
            @unit = unit
    end
    def convert_temp
        if @unit == "c"
            ntemp = ((9 * @temp) / 5 + 32).round(2)
            puts "The temperature in Fahrenheit is: %.2f °F" % [ntemp]
            ntemp = (@temp + 273.15).round(2)
            puts "The temperature in Kelvin is: %.2f °K" % [ntemp]
            # Prints what a temp in Celsius is in Kelvin and Fahrenheit
        elsif @unit == "f"
            ntemp = ((@temp - 32) * 5 / 9).round(2)
            puts "The temperature in Celsius is: %.2f °C" % [ntemp]
            ntemp = ((@temp - 32) * 5 / 9 + 273.15).round(2)
            puts "The temperature in Kelvin is: %.2f °K" % [ntemp]
            # Prints what a temp in Fahrenheit is in Celsius and kelvin
        elsif @unit == "k"
            ntemp = (@temp - 273.15).round(2)
            puts "The temperature in Celsius is: %.2f °C" % [ntemp]
            ntemp = ((@temp - 273.15) * 9 / 5 + 32).round(2)
            puts "The temperature in Fahrenheit is: %.2f °F" % [ntemp]
            # Prints what a temp in Kelvin is in Celsius and Fahrenheit
        else
            puts "Invalid Input"
        end
    end
end
valid_inputs = %w[celsius c fahrenheit f kelvin k]
puts "Enter the temperature: \n"
temperature = gets.chomp
puts "Is this temperature in Celsius, Fahrenheit, Kelvin (C/F/K): \n"
unit = gets.chomp
until valid_inputs.include? unit
    puts "Please input a valid temperature unit (Celsius, Fahrenheit, Kelvin, C, F, K): \n"
    unit = gets.chomp
end
# Gets unit of temperature and its value. There was no reason to include kelvin, but I was bored.
convert = TempConvert.new(temperature, unit)
convert.convert_temp
