def input_handling
    puts "Please insert a positive whole number"
    while true do
        input = gets.chomp
        # used Regex to check if it's a whole number
        unless input.match(/[^0-9]/)
            return input.to_i
        else
            #                             
            print "\nThat's not a positive integer.\nPlease insert positive whole number: "
        end
    end
end

3.times do
    number = input_handling
    puts "From 1 to #{number}, the sum is: #{(1..number).reduce(:+)}"
end