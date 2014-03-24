def compress(string)
  a = string.chars
  r = Array.new
  r << a.shift
  count = 1
  while !a.empty?
    temp = a.shift
    if r.last == temp
      count += 1
    else
      r << count if count > 1
      r << temp
      count = 1
    end
  end
  r.join
end

puts compress("aaabcde")
puts compress("liiilliaaaaaaanj")
puts compress("")
