require_relative "../linked_list_reversal"

describe LinkedListReversal do

  class Node
    attr_accessor :next, :value

    def initialize(pointer, value)
      @next = pointer
      @value = value
    end

  end

  it "reverses the direction of a linked list" do
    head = Node.new(Node.new(Node.new(nil, 10), 3), 7)
    node = LinkedListReversal.new(head).reverse
    continue = true
    reversed_values = []
    while continue
      reversed_values << node.value
      node = node.next
      continue = !node.nil?
    end
    expect(reversed_values).to eq [10, 3, 7]
  end
end


