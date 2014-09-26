module BinaryTree
	class Node
		attr_accessor :value
		def initialize (num)
			@value = num
		end
		
		def get_parent
			@parent
		end
		
		def get_left_child
			@left_child
		end
		
		def get_right_child
			@right_child
		end
		
		def set_parent(parent)
			return nil if parent.class != Node
			@parent = parent
		end
		
		def set_left_child(child)
			return nil if child.class != Node
			@left_child = child
		end
		
		def set_right_child(child)
			return nil if child.class != Node
			@right_child = child
		end
	end

	class Tree

		def build_tree(arr)
			tree = []
			arr.each do |n|
				x = Node.new(n)
				tree << x
			end
			p tree
		end
		
		def breadth_first_search
		end
		
		def depth_first_search
		end
		
		def dfs_rec
		end
		
	end
	
	x = Tree.new
	x.build_tree([1,2,3,4,5])
end

