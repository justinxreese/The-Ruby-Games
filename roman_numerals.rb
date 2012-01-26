def to_arabic_numeral(s)
  rome = {'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000}
  skip = false
  n = 0
  s.chars.each_cons(2).each {|x| 
    if skip
      skip = false
      next
    end
    p x
    if rome[x[0]] < rome[x[1]] && !['V','L','D'].include?(x[0])
      n+= rome[x[1]] - rome[x[0]] 
      p rome[x[1]] - rome[x[0]] 
      skip = true
    else
      n+= rome[x[0]] 
      p rome[x[0]].to_s+"else"
    end
  }
  n += rome[s[-1]] if s.size.odd? && s[-1] == s[-2]
  n
end

puts to_arabic_numeral('MMXII')
puts to_arabic_numeral('MCMXCIX')
