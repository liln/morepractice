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
      r << count
      r << temp
      count = 1
    end
  end
  r << count
  rs = r.join
  rs.length < string.length ? rs : string
end
