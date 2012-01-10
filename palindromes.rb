# Puns, Palindromes and Parrots
# ============================
# Jan 3, 2011 Contest
# A palindrome is a word which reads the same forwards as it does backwards, for example 'kayak' or 'racecar'. 
# This week we want you to find the longest palindromic substring in a given string. You will be provided with 
# a string containing only letters, embedded within this string will be one or more palindromes. You must find 
# the longest possible palindrome within the given string and return the palindrome.
#
# Result : Runs in 0.087532s (13th place) 148 characters (68th place) Submitted by justinxreese on January 10th, 2012 17:13

def find_longest_palindrome(string)
  l = string.size
  l.downto(0) { |i|
    0.upto(l) { |j|
      s = string.slice(j,i)
      return s if s == s.reverse && s.size > 1
    }
  }
end

str = "abacdfgdcabaypqqpy"
str = "racecar"
str = "I went to the zoo kayak to ride my racecar all around"
puts find_longest_palindrome(str)
