require "./lib/node"
require 'rspec'

describe Node do
    describe "data" do
        it 'returns requested data' do
    node = Node.new("plop")
    expect(node.data).to eq('plop')
        end
    end
describe 'next node' do
    it 'returns nil' do 
        node = Node.new('plop')
        expect(node.next_node).to be_nil
end
end
end