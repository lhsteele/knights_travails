require_relative "PolyTreeNode.rb"

class KnightPathFinder 
  attr_reader :pos, :start_pos

  def initialize(pos)
    @pos = pos 
    @start_pos = PolyTreeNode.new(pos)
    self.build_move_tree
  end

  def build_move_tree

  end











end

kpf = KnightPathFinder.new([0,0])
p kpf.start_pos