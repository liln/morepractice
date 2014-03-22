#iterative solution with a runner
def remove(list, n)
  ptr = list.head
  runner = list.head
  (0..n).each do |nn|
    runner = runner.nexxt
  end
  if runner
    runner = runner.nexxt
    while(runner)
      ptr = ptr.nexxt
      runner = runner.nexxt
    end
    ptr.nexxt = ptr.nexxt.nexxt
  else
    list.head = list.head.nexxt
  end
end

#iterative solution without runner
def remove2(list,n)
  u = length(list.head) - n - 2
  if u < 0
    list.head = list.head.nexxt
  else
    ptr = list.head
    (0...u).each do |uu|
      ptr = ptr.nexxt
    end
    ptr.nexxt = ptr.nexxt.nexxt
  end
end

def length(list)
  return 0 if list.nil?
  1 + length(list.nexxt)
end
