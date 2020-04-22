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
    expect(llist.head.data).to eql("algo")
    expect(llist.head.next_node).to eql(nil)
  end

  it "counts how many things are on the list" do
    list = LinkedList.new
    list.append("algo")
    expect(list.count).to eql(1)
  end

  it "generates a string of all elements" do
    list = LinkedList.new
    list.append("algo")
    expect(list.to_string).to eql("algo")
  end
end