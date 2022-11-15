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