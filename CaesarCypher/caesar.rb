class Cypher:
    symbols = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()?,.<>|~`ÁÉÍÓÚÝáéíóúý"
    max_key_size = symbols.length
    # Holds the number of characters in the symbols variable (maximum shift number)

    def main()
        mode = get_mode()
        message = get_message()

    end

    def get_mode()
        while True
            valid_inputs = %w[encrypt e decrypt d brute b]
            puts "Do you wish to encrypt or decrypt or brute-force a message?"
            mode = gets.chomp
            if valid_inputs.include? mode
                return mode
            else
                puts "Enter either \"encrypt\" or \"e\" or \"decrypt\" or \"d\"."
            end
        end
    end
    
    def get_message()
        puts "Enter your message:"
        return gets.chomp
    end

    def get_key()
        while True
            puts "Enter the key number (1-%s)" % [max_key_size]
            key = gets.chomp.to_i
            if 1 <= key <= MAX_KEY_SIZE
                return key
            end
        end
        # Gets the number of characters the message with get shifted by
    end

    def get_translated_message()

    end
end


msg = Cypher.new
msg.main
