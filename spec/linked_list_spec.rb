require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  describe "#append" do
    it "adds a new node to the list" do
      list = LinkedList.new
      expect(list.append("doop")).to eq "doop"
      expect(list.head.data).to eq "doop"
    end
  end

  describe "#count" do
    it "returns the number of nodes in the list" do
      list = LinkedList.new
      expect(list.count).to eq 0

      list.append("doop")
      expect(list.count).to eq 1

      list.append("beep")
      expect(list.count).to eq 2
    end
  end

  describe "#to_string" do
    it "returns a string representation of the list" do
      list = LinkedList.new
      expect(list.to_string).to eq ""

      list.append("doop")
      expect(list.to_string).to eq "doop"

      list.append("beep")
      expect(list.to_string).to eq "doop beep"
    end
  end
end
