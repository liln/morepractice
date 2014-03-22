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
    assert_equal @list.v_at(0), "A"
    assert_equal length(@list.head), 4
    remove(@list,0)
    assert_equal @list.to_a, ["A","B","C"]
  end

  def test_remove1
    assert_equal @list.v_at(1), "B"
    remove(@list,1)
    assert_equal @list.to_a, ["A","B","D"]
  end

  def test_remove2
    assert_equal @list.v_at(2), "C"
    remove(@list,2)
    assert_equal @list.to_a, ["A","C","D"]
  end

  def test_remove3
    assert_equal @list.v_at(3), "D"
    remove(@list,3)
    assert_equal @list.to_a, ["B","C","D"]
  end

  def test_recursive_remove0
    remove2(@list,0)
    assert_equal @list.to_a, ["A","B","C"]
  end

  def test_recursive_remove1
    remove2(@list,1)
    assert_equal @list.to_a, ["A","B","D"]
  end

  def test_recursive_remove2
    remove2(@list,2)
    assert_equal @list.to_a, ["A","C","D"]
  end

  def test_recursive_remove3
    remove2(@list,3)
    assert_equal @list.to_a, ["B","C","D"]
  end
end
