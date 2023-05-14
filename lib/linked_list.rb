require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
    data
  end

  