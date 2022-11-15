def substrings(str, substr_array)
    # Check for Valid Arguments
    error_check(str, String) && error_check(substr_array, Array) ? result = Hash.new(0) : return
    str = str.downcase
    substr_array.each do |substr|
        # Check for valid Array
        error_check(substr, String) ? substr = substr.downcase : return
        if str.include?(substr)
            result[substr] = str.split(substr).length - 1
        end
    end
    result
end 

def error_check(input, expected)
    unless input.class == expected
        puts "Invalid argument - expected #{expected.to_s}." 
        return false
    end 
    return true
end

def get_input()
    print "\nEnter a string to check: "
    input_str = gets.chomp
    print "\nEnter substrings to check (separate each with a space): "
    input_substr = gets.chomp.downcase.split()
    puts "\nString entered: #{input_str}"
    puts "Substrings Entered: #{input_substr}" 
    return input_str, input_substr
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "- - TESTS - -"
puts "Substrings: #{dictionary}"
puts "\nSingle Word: 'below' \n #{substrings("below", dictionary)}"
puts "\nMulti Word: 'Howdy partner, sit down! How's it going?' \n #{substrings("Howdy partner, sit down! How's it going?", dictionary)}"
puts "- - END TESTS - -"

string, substrings = get_input()
puts "Result: #{substrings(string, substrings)}"