def replace_spaces(string)
  string.gsub!(' ','%20')
end

def replace_spaces2(string)
  spaces = 0
  (0...spaces.length).each do |n|
    spaces += 1 if string[n] == " "
  end


end
