class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def at(n)
    ptr = head
    while ptr && n > 0
      ptr = ptr.nexxt
      n -= 1
    end
    return nil if ptr.nil?
    ptr
  end

  def v_at(n)
    at(n).value
  end

  def to_a
    a = Array.new
    ptr = head
    while ptr
      a << ptr.value
      ptr = ptr.nexxt
    end
    a
  end
end
