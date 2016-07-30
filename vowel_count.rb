=begin
Have the function VowelCount(str) take the str string parameter being passed 
and return the number of vowels the string contains (ie. "All cows eat grass" 
would return 5). Do not count y as a vowel for this challenge   
=end

# Solution
def VowelCount(str)
  vowels = str.chars.find_all{|char| char if char =~ /[aeiou]/i}
  vowels.size
end

# Alternative
def VowelCount(str)
  str.scan(/[aeiouAEIOU]/).count
end

# Alternative
def VowelCount(str)
  vowels = str.downcase.scan(/[aeiou]/)
  vowels.count
end

# Alternative
def VowelCount(str)
  vowels = %w(a e i o u)
  count = 0
  str.split("").each{|ltr| count += 1 if vowels.include?(ltr)}
  count
end