require "./lib/node"
require 'rspec'

describe Node do
	describe 'node exists' do
		it 'exists' do
			node = Node.new("plop")
			expect(node).to be_a(Node)
		end
	end
	describe "data" do
		it 'returns requested data' do
			node = Node.new('plop')
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