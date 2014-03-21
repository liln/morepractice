class Node
  attr_accessor :value, :nexxt

  def initialize(value, nexxt=nil)
    @value = value
    @nexxt = nexxt
  end
end
