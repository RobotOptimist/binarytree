#cheat
module BinaryTree
  class EmptyNode
    def to_a
      []
    end
 
    def include?(*)
      false
    end
 
    def push(*)
      false
    end
    alias_method :<<, :push
 
    def inspect
      "{}"
    end
  end
 
  class Node
    # our three features:
    attr_reader :value
    attr_accessor :left, :right
 
    def initialize(v)
      @value = v
      @left = EmptyNode.new
      @right = EmptyNode.new
    end
 
    def push(v)
      case value <=> v
      when 1 then push_left(v)
      when -1 then push_right(v)
      when 0 then false # the value is already present
      end
    end
    alias_method :<<, :push
 
    def include?(v)
      case value <=> v
      when 1 then left.include?(v)
      when -1 then right.include?(v)
      when 0 then true # the current node is equal to the value
      end
    end
 
    def inspect
      "{#{value}:#{left.inspect}|#{right.inspect}}"
    end
 
    def to_a
      left.to_a + [value] + right.to_a
    end
 
    private
 
      def push_left(v)
        left.push(v) or self.left = Node.new(v)
      end
 
      def push_right(v)
        right.push(v) or self.right = Node.new(v)
      end
  end
	
	def self.from_array(array) 
			tree = Node.new(array.shift)
      array.each {|v| tree.insert v}    
  end
	
	x = [1,2,3,4,5,6]
	p BinaryTree.from_array(x)
end