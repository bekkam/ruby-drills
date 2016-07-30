=begin
LETTER CHANGES
Have the function LetterChanges(str) take the str parameter being passed and 
modify it using the following algorithm. Replace every letter in the string 
with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
Then capitalize every vowel in this new string (a, e, i, o, u) and finally 
return this modified string.
=end

# Solution 1
def LetterChanges(str)
  result = []
  vowels = ['a', 'e', 'i', 'o', 'u']

  str.downcase.split("").each do |char|
    if char.ord.between?(97,122)
        char = char  != 'z' ? char.next : 'a'
    end
    char.upcase! if vowels.include? char
    result << char
  end
  result = result.join
end

# Solution 2
def LetterChanges(str)
  letters = ('a'..'z').to_a
  changes = letters.rotate.map{|letter| "aeiou".include?(letter) ? letter.upcase : letter }
  
  result = str.chars.map{|char| letters.include?(char) ? changes[(letters.index(char))] : char }.join
end

# Solution 3
def LetterChanges(str)
    characters = str.split("")
    changed_str = ""
    characters.each do |character|
        if is_letter?(character)
            changed_str << character.next
        else
            changed_str << character
        end
    end
    changed_str.gsub(/[aeiou]/, &:upcase)         
end
def is_letter?(char)
    alphabet = ("a".."z").to_a
    alphabet += ("A".."Z").to_a
    return alphabet.include?(char)
end
def is_lower_vowel?(char)
    l_vowels = ["a", "e", "i", "o", "u"]
    return l_vowels.include?(char)
end