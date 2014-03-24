def permutation?(string1, string2)
  return false if string1 == string2
  string1.downcase.chars.sort == string2.downcase.chars.sort
end
