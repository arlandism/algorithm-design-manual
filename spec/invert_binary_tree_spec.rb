require_relative '../invert_binary_tree'

describe InvertBinaryTree do

  class BinaryTree
    attr_accessor :left, :right, :value

    def initialize(left, right, value)
      @left = left
      @right = right
      @value = value
    end
  end

  it "reverses a tree with two nodes" do
    left = BinaryTree.new(nil, nil, 7)
    right = BinaryTree.new(nil, nil, 9)
    tree = BinaryTree.new(left, right, 8)
    InvertBinaryTree.new(tree).call
    expect(tree.left).to eq right
    expect(tree.right).to eq left
  end

  it "reverses arbitrarily nested trees" do
    subtree_left = BinaryTree.new(nil, nil, 7)
    subtree_right = BinaryTree.new(nil, nil, 9)
    subtree = BinaryTree.new(subtree_left, subtree_right, 8)
    tree = BinaryTree.new(subtree, nil, 10)
    InvertBinaryTree.new(tree).call
    expect(tree.right).to eq subtree
    expect(subtree.left).to eq subtree_right
    expect(subtree.right).to eq subtree_left
  end

end
