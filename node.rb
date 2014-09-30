module BinaryTree
	class Node
		
		def initialize (num)
			@node = {:value => num, :left_child => nil, :right_child => nil}			
		end
		
		def parent
			@parent
		end
		
		def node
			@node
		end
		
		def value
			@node[:value]
		end
		
		def left_child
			@node[:left_child]
		end
		
		def right_child
			@node[:right_child]
		end
		
		def parent=(parent)
			return nil if parent.class != Node
			@parent = parent
		end
		
		def set_left_child=(child)
			return nil if child.class != Node
			@node[:left_child] = child
			child.parent = self
		end
		
		def set_right_child=(child)
			return nil if child.class != Node
			@node[:right_child] = child	
			child.parent = self
		end
	end

	class Tree

		def build_tree(arr)
			arrs = split_array(arr)			
			nodes = convert_to_nodes(arrs)
			p nodes[0].left_child.value
		end
		
		def split_array(arr)
			arrs = []		
			until arr.length < 3 do
				chunk = []
				 3.times {chunk << arr.shift}
				 arrs << chunk
			end
			arrs << arr	if arr.length > 0
			arrs
		end
		
		def convert_to_nodes(arrs)
			nodes = []
			arrs.each do |n| 
				x = set_to_node(n)				
				nodes << x				
			end
			nodes
		end
		
		def set_to_node(arr)			
			return nil if arr.length > 3
			arr.sort!
			case arr.length
			when 3 then node = three_el_node(arr)
			when 2 then node = two_el_node(arr)
			when 1 then node = one_el_node(arr)
			end
		end
		
		def three_el_node(arr)
			node = Node.new(arr[1])			
			left = Node.new(arr[0])	
			right = Node.new(arr[2])
			node.set_left_child = left
			node.set_right_child = right
			node
		end
		
		def two_el_node(arr)
			node = Node.new(arr[0])
			right = Node.new(arr[1])
			node.set_right_child = right
		end
		
		def one_el_node(arr)
			node = Node.new(arr[0])
		end
		
		def combine_nodes(node,nodet)
			
			
		end
		
		def assign_children(node,nodet)
		
		end
		
		def sort_nodes(node,nodet)
			if node.value < nodet.value
				small = node
				large = nodet
			else
				small = nodet
				large = node
			end			
			if large.left_child = nil || large.left_child.value < small.value
				return [small,large]
			else
				large = large.left_child
				sort_nodes(large,small)							
			end
		end
		
		def analyze_nodes(node,nodet)
			ovalue = node.value; oleftv = node.left_child.value;	orightv = node.right_child.value;	
			tvalue = nodet.value;	tleftv = nodet.left_child.value; trightv = nodet.right_child.value
			
		end
		
		def breadth_first_search
		end
		
		def depth_first_search
		end
		
		def dfs_rec
		end
		
	end
	
	x = Tree.new
	x.build_tree([1,2,3,4,5,6])
end

