def run
    starting_year = 0
    ending_year = 0 
    while true do
    starting_year = input_handling("Insert the starting year:")
    ending_year = input_handling("Insert the ending year:")
    # break if the year range is valid
    break if valid_range?(starting_year, ending_year)
    end

    range_year = (starting_year..ending_year).to_a
    #array to keep the resulting array
    leap_years = []

    range_year.each {|year| leap_year_find(year, leap_years)}

    puts "\nNumber of leap years [#{starting_year} - #{ending_year}]: #{leap_years.length}
    \r**************************
    \r#{leap_years}"
    
end

#make sure sure this is an integer
def input_handling(question)
    puts question
    while true do
        input = gets.chomp
        # used Regex to check if it's a whole number
        unless input.match(/[^0-9]/)
            if input.to_i < 1581
                puts "\nLeap years did not exist until 1582"
                puts "\n"+question
                next
            end
            return input.to_i
        else
            #                             
            print "\nThat's not an positive integer.\nPlease insert a positive whole number: "
        end
    end
end

def leap_year_find(year, leap_years)
    if year % 400 == 0
        leap_years << year
    elsif year % 4 == 0 && !(year % 100 == 0)
        leap_years << year
    end
end


def valid_range?(starting_year, ending_year)

    if ending_year - starting_year == 0
        puts "\nYou inserted the same year."
        return false

    elsif ending_year - starting_year < 0
        puts "\n#{ending_year} -  #{starting_year} = #{ending_year - starting_year}
              \rThat's an invalid range."
        return false
    end

    return true
end

run()