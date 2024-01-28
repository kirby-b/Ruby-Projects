class FizzBuzz
    def fizzBuzz(n)
        for i in n do
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
        end
    end
    puts "\nInput Number 3:"
    fizzBuzz(3)
    puts "\nInput Number 5:"
    fizzBuzz(5)
    puts "\nInput Number 10:"
    fizzBuzz(10)
    puts "\nInput Number 20:"
    fizzBuzz(20)
end