
class LinkedListReversal

  def initialize(head)
    @head = head
  end

  def reverse
    last_node = nil
    node = head
    while node.next
      future = node.next
      node.next = last_node
      last_node = node
      node = future
    end
    node.next = last_node
    node
  end

  private
  attr_reader :head
end
