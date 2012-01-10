# Puns, Palindromes and Parrots
# ============================
# Jan 3, 2011 Contest
# A palindrome is a word which reads the same forwards as it does backwards, for example 'kayak' or 'racecar'. 
# This week we want you to find the longest palindromic substring in a given string. You will be provided with 
# a string containing only letters, embedded within this string will be one or more palindromes. You must find 
# the longest possible palindrome within the given string and return the palindrome.
#
# Result : 14th place fastest

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
