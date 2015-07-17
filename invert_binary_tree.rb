
class InvertBinaryTree

  def initialize(tree)
    @tree = tree
  end

  def call(tree = @tree)
    if tree
      l = tree.left
      r = tree.right
      call(l)
      call(r)
      tree.left = r
      tree.right = l
    end
  end
end
