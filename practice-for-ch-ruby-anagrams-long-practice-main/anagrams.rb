def first_anagram?(str1, str2)
    anagrams = str1.chars.permutation.map &:join

    anagrams.include?(str2)
end

def second_anagram?(str1, str2)



end
