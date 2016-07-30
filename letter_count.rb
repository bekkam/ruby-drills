=begin
  Have the function LetterCount(str) take the str parameter being passed 
  and return the first word with the greatest number of repeated letters. 
  For example: "Today, is the greatest day ever!" should return greatest 
  because it has 2 e's (and 2 t's) and it comes before ever which also has 
  2 e's. If there are no words with repeating letters return -1. Words will 
  be separated by spaces.
=end

def LetterCount(str)

  repeat_count, most_repeats = 1, ""

  words = str.split(' ')

  words.each do |word|
    word.downcase.chars.each do |c| 
      current =  word.count(c)
      if current > repeat_count
        most_repeats = word
        repeat_count = current
      end
    end
  end
  most_repeats
end