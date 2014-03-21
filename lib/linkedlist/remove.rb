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
