class Slots
    def main
        earnings = 0
        puts "Welcome to the Lucky Programmer Slots. How many dollars would you like to put in (1 dollar per spin)"
        cash = gets.chomp
        spins = cash.to_i
        while true
            begin
                if spins == 0
                    puts "You are out of cash! \nPlease insert more money to continue!"
                    cash = gets.chomp
                    until cash.match(/[0-9]/)
                        puts "Invalid input! Please try again:"
                        cash = gets.chomp
                    end
                    spins = cash.to_i
                end
                puts "Spinning slots"
                earnings += winnings
                puts "\nCurrent Winnings: %i " % [earnings]
                sleep(1)
                spins -= 1
            rescue Interrupt
                puts "Thank you for playing. Come again and test your luck."
                break
            end
        end
    end
    def winnings
        win_or_no = rand(1..10000000000)
        case win_or_no
        when 77
            print("Money Back")
            return 10
        when 777
            print("Small Prize")
            return 50
        when 77777
            print("Big Prize")
            return 200
        when 7777777777
            print("JackPot")
            return 10000
        else
            print("No luck")
            return 0
        end
    end
end


gambling = Slots.new
gambling.main