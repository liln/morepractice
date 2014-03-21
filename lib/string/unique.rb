def all_unique?(string)
  string.length == string.chars.uniq.length
end

# can't use additional data structures
def all_unique_2?(string)
  (0...string.length).each do |n|
    (n...string.length).each do |m|
      return false if string[n] == string[m]
    end
  end
  true
end
