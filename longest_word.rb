# Have the function LongestWord(sen) take the sen parameter being passed and 
# return the largest word in the string. If there are two or more words that are 
# the same length, return the first word from the string with that length. 
# Ignore punctuation and assume sen will not be empty.

# Solution 1
def LongestWord(sen)
  longest = ""
  words = sen.split
  words.each do |word| 
    edited_word = word.gsub(/[[:punct:]]/, '')
    longest = edited_word if edited_word.length > longest.length
  end
  return longest
end

# Solution 2
def LongestWord(sen)
  longest, words = "", sen.scan(/\w+/)
  words.each{ |current| longest = current if current.length > longest.length }
  longest
end

# Solution 3
def letter_count(word)
    return word.count "a-z, A-Z"
end
def LongestWord(sen)
    word_arr = sen.split
    longest_word = word_arr.max_by {|word| letter_count(word) }
end

# Solution 4
def LongestWord(sen)
  longest=""
  clean=sen.delete("!-/" ":-@" "[`" "{-~:")
  words = clean.split
  words.each do |word|
    if word.length > longest.length
      longest = word
    end
  end
  return longest          
end

# Solution 5
def LongestWord(sen)
  longest=""
  edited_words=sen.delete("!-/" ":-@" "[`" "{-~:")
  edited_words.split.each {|word| longest = word if word.length > longest.length}
  return longest 
end