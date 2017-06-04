class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree

  def initialize(value)
    @root = Node.new(value)
  end

  def search(value)
    node = @root
    while node
      if value == node.value
        return node
      elsif value < node.value
        node = node.left
      else
        node = node.right
      end
    end
  end

  def insert!(value)
    if search(value).nil?
      node = @root
      loop do
        if value < node.value
          if node.left.nil?
            node.left = Node.new(value)
            return
          else
            node = node.left
            next
          end
        end
        if value > node.value
          if node.right.nil?
            node.right = Node.new(value)
            return
          else
            node = node.right
          end
        end
      end
    end
  end

  def min
    node = @root
    node = node.left while node.left
    return node
  end
end

# test
data = [5, 6, 3, 7, 2]
tree = BinaryTree.new(10)
data.each do |value|
  tree.insert!(value)
end
puts tree.min.value
p tree
