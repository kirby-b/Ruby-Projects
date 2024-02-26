class FizzBuzz
    def initialize(number)
        @num = number + 1
    end
    def to_fizz_to_buzz
        (0...@num).each { |i|
            if i % 5 == 0 && i % 3 == 0 #If it is divisible by 5 and 3 it prints FizzBuzz
                puts "FizzBuzz"
            elsif i % 3 != 0 && i % 5 != 0 #If it is divisible by none it prints the number
                puts "#{i}"
            elsif i % 3 == 0 #If it is divisible by 3 it prints Fizz
                puts "Fizz"
            elsif i % 5 == 0 #If it is divisible by 5 it prints Buzz
                puts "Buzz"
                #Prints a phrase based on the current number being tested
            end
        }
    end
end
fizz1 = FizzBuzz.new(3)
fizz2 = FizzBuzz.new(5)
fizz3 = FizzBuzz.new(10)
fizz4 = FizzBuzz.new(20)
puts "\nInput Number 3:"
fizz1.to_fizz_to_buzz
puts "\nInput Number 5:"
fizz2.to_fizz_to_buzz
puts "\nInput Number 10:"
fizz3.to_fizz_to_buzz
puts "\nInput Number 20:"
fizz4.to_fizz_to_buzz
