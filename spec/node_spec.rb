
require "node"


RSpec.describe "Node" do
  it "returns the correct data" do
    node = Node.new("plop")
    expect(node.data).to eql("plop")
  end

  it "returns nil for next_node" do
    node = Node.new("algo")
    expect(node.next_node).to eql(nil)
  end
end