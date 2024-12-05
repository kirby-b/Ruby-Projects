class WordCount
  def initialize(words)
        @word_string = words
  end
  def word_count
    # Uses array/list to count words
    # Makes a list by splitting the words with spaces as delimiters
    y = 0
    x = 0
    countable = @word_string.split(" ") # Makes a list of words split at the spaces
    while x < countable.length
        if countable[x] == "" || countable[x].strip.empty? 
            countable.pop(x) # Pops the index if it is empty or a space so it doesnt count blank spaces as words
        else
            x +=1 # Doesnt pop words because they need to be counted
        end
    end
    counted = countable.length 
    puts "This sentence contains #{counted} words" 
        
  end
end

puts "Please input a sentence:\n"
word_string = gets.chomp
count = WordCount.new(word_string) # Declares a new WordCount instance so it can call methods.
count.word_count