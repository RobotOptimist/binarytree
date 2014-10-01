module BinaryTree
	class Node
		attr_reader :value
		attr_accessor :left, :right
		def initialize(v)
      @value = v
      @left  = EmptyNode.new
      @right = EmptyNode.new
    end
		
		def insert(num)
			case num <=> @value
			when 1 then left.insert_left(num)
			when -1 then right.insert_right(num)
			when 0 then false
			end
		end
		
		def inspect
     "{#{value}::#{left.inspect}|#{right.inspect}}"
    end
		
		def insert_left(v)
      left.insert(v) or self.left = Node.new(v)
    end

    def insert_right(v)
      right.insert(v) or self.right = Node.new(v)
    end
		
		def include?(v)
    case value <=> v
    when 1 then left.include?(v)
    when -1 then right.include?(v)
    when 0 then true 
    end
		end
		
	end

	def self.from_array(array)
    Node.new(array.first).tap do |tree|
      array.each {|v| tree.insert v }
    end
  end
	
	
	class EmptyNode		
		
    def include?(*)
      false
    end

    def insert(*)
      false
    end

    def inspect
      "{}"
    end
  end
	
	x = [1,2,3,4,5,6]
	p BinaryTree.from_array(x)
end

