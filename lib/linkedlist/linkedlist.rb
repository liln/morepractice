class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def prepend(value)
    @head = Node.new(value, @head)
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
