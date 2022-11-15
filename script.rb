def substrings(str, substr_array)
    result = {}
    str = str.downcase
    # check if the str includes each substr
    substr_array.each do |substr|
        substr = substr.downcase
        if str.include?(substr)
            result[substr] = str.split(substr).length - 1
        end
    end
    result
end 