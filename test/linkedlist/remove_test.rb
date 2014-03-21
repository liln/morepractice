require "test_helper"
require "linkedlist/node"
require "linkedlist/linkedlist"
require "linkedlist/remove"

class RemoveTest < Minitest::Unit::TestCase
  def setup
    @list = LinkedList.new
    @list.prepend("D")
    @list.prepend("C")
    @list.prepend("B")
    @list.prepend("A")
  end

  def test_remove0
    remove(@list,0)
    assert_equal @list.to_a, ["A","B","C"]
  end

  def test_remove1
    remove(@list,1)
    assert_equal @list.to_a, ["A","B","D"]
  end

  def test_remove2
    remove(@list,2)
    assert_equal @list.to_a, ["A","C","D"]
  end

  def test_remove3
    remove(@list,3)
    assert_equal @list.to_a, ["B","C","D"]
  end
end
