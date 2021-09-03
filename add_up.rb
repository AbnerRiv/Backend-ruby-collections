# check if it's a positive integer
def integer?(input)
    input[/[0-9]+/] == input
end

def input_handling
    puts "Please insert a positive whole number"
    while true do
        input = gets.chomp
        # used Regex to check if it's a whole number
        if integer?(input)
            return input.to_i
        else
            #                             
            print "\nThat's not a positive integer.\nPlease insert positive whole number: "
        end
    end
end

def add_up(number)
    puts "From 1 to #{number}, the sum is: #{(1..number).reduce(:+)}"
end

def run()
    puts "This is sumation program"
    3.times do
        number = input_handling
        add_up(number)
    end
    puts "You have reached the end of the program. Bye :)"
end

run()