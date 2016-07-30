=begin
Have the function Palindrome(str) take the str parameter being passed and 
return the string true if the parameter is a palindrome, (the string is the 
same forward as it is backward) otherwise return the string false. For example: 
"racecar" is also "racecar" backwards. Punctuation and numbers will not be 
part of the string. 
=end

# Solution
def Palindrome(str)
  str = str.split(" ").join("")
  length = str.size
  reversed = ""

  (length - 1).downto(0) do |idx|
    reversed += "#{str[idx]}"
  end
  reversed == str
end

# Solution
def Palindrome(str)
  str.scan(/\w/).join('') == str.reverse.scan(/\w/).join('')
end

# Solution
def Palindrome(str)
    str.delete!(" ")
    str == str.reverse   
end