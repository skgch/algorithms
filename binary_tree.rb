class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root
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
    if @root.nil?
      @root = Node.new(value)
      return
    end

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

  def max
    node = @root
    node = node.right while node.right
    return node
  end

  def self.preorder(node)
    puts node.value
    preorder(node.left) if node.left
    preorder(node.right) if node.right
  end

  def self.inorder(node)
    inorder(node.left) if node.left
    puts node.value
    inorder(node.right) if node.right
  end

  def self.postorder(node)
    postorder(node.left) if node.left
    postorder(node.right) if node.right
    puts node.value
  end
end

# test
data = [4, 2, 6, 1, 3, 5, 7]
tree = BinaryTree.new
data.each do |value|
  tree.insert!(value)
end

# p tree.min
# p tree.max
# p tree.search(5)
# BinaryTree.preorder(tree.root)
# BinaryTree.inorder(tree.root)
# BinaryTree.postorder(tree.root)
