def find_longest_palindrome(string)
  p = []
  string.length.downto(0) { |i|
    0.upto(string.length) { |j|
      p << string[j,i] if string[j,i] == string[j,i].reverse && string[j,i].size > 1
    }
  }
  p.sort_by(&:length).last
end

str = "abacdfgdcabaypqqpy"
str = "racecar"
str = "I went to the zoo to ride my racecar all around"
puts find_longest_palindrome(str)
