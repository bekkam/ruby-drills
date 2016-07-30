=begin
 Have the function LetterCountI(str) take the str parameter being passed and 
 return the first word with the greatest number of repeated letters. 
 For example: "Today, is the greatest day ever!" should return greatest 
 because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
 If there are no words with repeating letters return -1. Words will be separated 
 by spaces.  
=end

# Solution
def LetterCountI(str)
  most_repeats_count = 1
  most_repeats = nil

  words = str.split(" ")
  words.each_with_index do |word, i|
    word = word.downcase
    word.chars do |letter|
      if word.count(letter) > most_repeats_count
        most_repeats_count = word.count(letter)
        most_repeats = words[i]
      end
    end
  end

  return most_repeats.nil? ? "-1" : most_repeats
end

# Solution
def LetterCountI(str)
  greatest, count, words = -1, 0, str.scan(/\S+/)
  
  words.each do |word|
    current = 0
    word.downcase.chars{|c| current += 1 if word.count(c) > 1 }
    greatest = word and count = current if current > count
  end
  
  greatest
end


# Solution

def LetterCountI(str)

 arr = str.split(' ')
 repeat_king = ""
 arr.each do |a|
   repeat_king = a if a.length - a.split('').uniq.length > repeat_king.length
  end
  return -1 if repeat_king == ""
  repeat_king
         
end
