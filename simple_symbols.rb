=begin
Have the function SimpleSymbols(str) take the str parameter being passed and 
determine if it is an acceptable sequence by either returning the string true 
or false. The str parameter will be composed of + and = symbols with several 
letters between them (ie. ++d+===+c++==a) and for the string to be true each 
letter must be surrounded by a + symbol. So the string to the left would be 
false. The string will not be empty and will have at least one letter.  
=end

# Solution
def SimpleSymbols(str)
  alpha = ("a".."z").to_a
  arr = str.split("")
  arr.each_with_index do |e,i|
    if alpha.include?(e)
      return "false" if i == 0 || i == arr.length - 1
      return "false" unless arr[i-1] == "+" && arr[i+1] == "+"
    end
  end

  "true"
end


# Solution
def SimpleSymbols(str)
    letters = str.split("")
    result = true
    0.upto(letters.size - 1) do |x|
    if letters[x] =~ /[a-z|A-Z]/
        puts letters[x]
        result = false if letters[x - 1] != "+" || letters[x + 1] != "+" || x == 0
    end
    end
    result
end


# Solution
def SimpleSymbols(str)
  letter_count = str.scan(/[A-Za-z]/).count
  matches = []
  
  str.split('').each_cons(3) do |cons|
    if cons.join =~ /\+[A-Za-z]\+/
      matches << cons
    end
  end
  matches.count == letter_count
end