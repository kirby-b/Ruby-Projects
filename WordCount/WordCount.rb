class WordCount
  def initialize(words)
        @word_string = words
  end
  def word_count
    # Uses array/list to count words
    # Makes a list by splitting the words with spaces as delimiters
    y = 0
    x = 0
    countable = @word_string.split(" ")
    while x < countable.length
        if countable[x] == "" || countable[x].strip.empty?
            countable.pop(x)# Pops the index if it is empty or a space
        else
            x +=1
        end
    end
    counted = countable.length
    puts "This sentence contains #{counted} words" 
        
  end
end

puts "Please input a sentence:\n"
word_string = gets.chomp
count = WordCount.new(word_string)
count.word_count