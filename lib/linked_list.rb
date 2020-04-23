require "pry"
require_relative "./lib/node"

class LinkedList

  attr_accessor :head

  def initialize
    @head = head
  end

  def append(value)
    node = Node.new(value)
    
    if @head == nil
      @head = node
    else
      tail_node.next_node = node
    end
    
    node.data
  end

  def count
    counter = 0
    current_node = @head
    while !current_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter  
  end

  def to_string
    current_node = @head
    string_array = []

    while !current_node.nil?
      string_array << "#{current_node.data}"
      current_node = current_node.next_node
    end
    string_array.join(" ")
  end

  private

  def tail_node
    current_node = @head

    while !current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end
end