puts "This is a word sorter program, so
\rKeep adding things until you insert a blank space"
word_list = []

while true do
    puts "Insert a word (to stop just hit enter)"
    answer = gets.chomp
    
# this puts any space character in an array   check if the word is ""
    if  answer.scan(/\s/).length != 0 || answer.empty?
        break

    else
        word_list << answer
    end
    
end
#                      This sorts things with in not case-sensitive way
word_list = word_list.sort_by {|word| word.downcase}
puts "The list:
\r****************"
word_list.each {|word| puts word}
