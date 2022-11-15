def substrings(str, substr_array)
    result = {}
    # check if the str includes each substr
    substr_array.each do |substr|
        if str.include?(substr)
            result[substr.to_sym] = str.split(substr).length - 1
        end
    end
    result
end