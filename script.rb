def substrings(str, substr_array)
    unless str.class == String
        puts "First argument must be a string." 
        return
    end 
    unless substr_array.class == Array
        puts "Second argument must be an array." 
        return 
    end
    result = {}
    str = str.downcase
    # check if the str includes each substr
    substr_array.each do |substr|
        unless substr.class == String
            puts "Array must contain only strings."
            return result = nil
        end
        substr = substr.downcase
        if str.include?(substr)
            result[substr] = str.split(substr).length - 1
        end
    end
    result
end 