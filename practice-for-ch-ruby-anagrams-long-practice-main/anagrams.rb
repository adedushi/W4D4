def first_anagram?(str1, str2)
    anagrams = str1.chars.permutation.map &:join

    anagrams.include?(str2)
end

def second_anagram?(str1, str2)
    string_2 = str2
    str1.each_char do |char|
        idx = string_2.index(char)
        if idx.nil?
            return false
        else
            string_2.slice!(idx)
        end
    end

    string_2 == ""
end

# puts second_anagram?("elivsliveson", "livesonelvis")

def third_anagram?(str1, str2)
    alphabet_sort(str1) == alphabet_sort(str2)
end

def alphabet_sort(str)
    alphabet = ("a".."z").to_a

    sorted = false

    until sorted
        sorted = true
        (0...str.length - 1).each do |i|
            if alphabet.index(str[i]) > alphabet.index(str[i + 1])
                str[i], str[i + 1] = str[i + 1], str[i]
                sorted = false
            end
        end
    end

    str
end

# puts third_anagram?("elivsliveson", "livesonelvis")
