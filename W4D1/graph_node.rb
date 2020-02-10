require 'set'

class GraphNode

    attr_accessor :neighbors
    attr_reader :node

    def initialize(node)
        @node = node
        @neighbors = []
    end
end

def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]
    until queue.empty?
        return queue.first if queue.first.node == target_value
        return nil if visited.include?(queue.first)
        queue += queue.first.neighbors
        visited.add(queue.shift)
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p  bfs(a, "f")