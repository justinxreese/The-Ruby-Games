def find_longest_palindrome(string)
  string.length.downto(0) { |i|
    0.upto(string.length) { |j|
      return string[j,i] if string[j,i] == string[j,i].reverse && string[j,i].size > 1
    }
  }
end

str = "abacdfgdcabaypqqpy"
str = "racecar"
str = "I went to the zoo kayak to ride my racecar all around"
puts find_longest_palindrome(str)
