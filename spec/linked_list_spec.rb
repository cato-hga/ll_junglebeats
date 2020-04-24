require_relative "../lib/linked_list"


RSpec.describe "LinkedList" do
  it "is created with attribute head set to nil by default" do
    llist = LinkedList.new
    expect(llist.head).to eql(nil)
  end

  it "returns append data" do
    llist = LinkedList.new
    llist.append("algo")
    expect(llist.append("algo")).to eql("algo")
  end

  it "appends data to the list" do
    llist = LinkedList.new
    llist.append("algo")
    llist.append("deep")
    expect(llist.head.data).to eql("algo")
    expect(llist.head.next_node.data).to eql("deep")
  end

  it "counts how many things are on the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    expect(list.count).to eql(2)
  end

  it "generates a string of all elements" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")
    list.insert(1, "hola")
    expect(list.to_string).to eql("prepend hola algo deep")
  end

  it "prepends the node to the beginning of the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")
    expect(list.to_string).to eql("prepend algo deep")
  end

  it "inserts the node at a specific position on the list" do
    list = LinkedList.new
    list.append("algo")
    list.append("deep")
    list.prepend("prepend")
    list.insert(1, "hola")
    expect(list.to_string).to eql("prepend hola algo deep")
  end
end