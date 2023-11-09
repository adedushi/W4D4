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


def third_anagram?(str1, str2)
    array_1 = str1.split('').sort
    array_2 = str2.split('').sort

    array_1.join('') == array_2.join('')
end

def fourth_anagram?(str1, str2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)

    str1.each_char {|char| hash_1[char] += 1}
    str2.each_char {|char| hash_2[char] += 1}

    hash_1 == hash_2
end


def fourth_anagram2?(str1, str2)
    one_hash = Hash.new(0)

    str1.each_char {|char| one_hash[char] += 1}
    str2.each_char {|char| one_hash[char] -= 1}

    one_hash.all? {|k,v| v == 0}

end
