class WordCount
  def initialize(words)
        @wordString = words
  end
  def wordCount
    #Uses array/list to count words
    #Makes a list by splitting the words with spaces as delimiters
    y = 0
    x = 0
    countable = wordString.split(" ")
    while x < countable.length:
        if countable[x] == "" or countable[x].isspace():
            countable.pop(x)#Pops the index if it is empty or a space
        else:
            x +=1
        end
    end
    counted = countable.length().to_str
    puts "This sentence contains #{@counted} words" 
        
  end
end

puts "Please input a sentence:\n"
wordString = gets.chomp
count = WordCount.new(wordString)
count.word_count
