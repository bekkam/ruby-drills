=begin
Have the function LetterCapitalize(str) take the str parameter 
being passed and capitalize the first letter of each word. Words will be 
separated by only one space. => e  
=end

# Solution 1
def LetterCapitalize(str)
  str.split(" ").map(&:capitalize).join(" ")
end


# Alternative
def LetterCapitalize(str)
  str.scan(/\w+/).map!(&:capitalize).join(' ')
end


# Alternative
def LetterCapitalize(str)
  str.split(" ").map{|i| i.capitalize}.join(" ")
end