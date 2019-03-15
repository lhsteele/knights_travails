require_relative "PolyTreeNode.rb"
require "byebug"

class KnightPathFinder 
  attr_reader :pos, :start_pos

  def initialize(pos)
    @pos = pos 
    @start_pos = PolyTreeNode.new(pos)
    self.build_move_tree
  end

  def self.valid_moves(pos)
    x, y = pos 
    poss_moves = []
    possibilities = [[2, -1], [2, 1], [1, 2], [1, -2], [-2, 1], [-2, -1], [-1, -2], [-1, 2]]
    possibilities.each do |poss|
      new_move = [(poss[0] + x), (poss[1] + y)]
      if new_move.first >= 0 && new_move.first <= 7 && new_move.last >= 0 && new_move.last <= 7
        poss_moves << new_move
      end
    end
    poss_moves
  end

  #the pos being passed in should be an array of 2 numbers, which is the starting pos defined when we initialize a knight
  def new_move_positions(pos)
    #posible_pos = Array.new(8) { Array.new([]) }
    new_pos = []
    x, y = pos 
    one_move = 1
    two_moves = 2
    posible_pos.each do |sub_pos|
    
    @considered_positions = [pos]
    end
  end

  def valid_moves

  end
  #valid moves method should check for all possibilities first
  #return an array of positions as long as they're on the board 
  #contain an array 

  def build_move_tree

  end




end

kpf = KnightPathFinder.new([0,0])
KnightPathFinder.valid_moves([7,1])

# a knight moves 2 sq horizontally, then 1 vertically
#or
# 2 sq vertically, then 1 horizontally

#if you start at [7, 1]
#possible next steps are: 
# [0, 1] => [2, 0][2, 2][1, 3]
#possible scenarios are:
#[x + 2, y - 1][x + 2, y + 1][x + 1, y + 2][x + 1, y - 2]
#[x - 2, y + 1][x - 2, y - 1][x - 1, y - 2][x - 1, y + 2]

#   0 1 2 3 4 5 6 7
# 0 x K x x x x K x
# 1 x x x x x x x x
# 2 x x x x x x x x
# 3 x x x x x x x x
# 4 x x x x x x x x
# 5 x x x x x x x x
# 6 x x x x x x x x
# 7 x K x x x x K x