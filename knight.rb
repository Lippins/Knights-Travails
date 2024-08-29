# frozen_string_literal: true

require './board'
# Represents the knight and initiates the pathfinding on the board.
class Knight
  def initialize(board)
    @board = board
  end

  def find_path(start, endpoint)
    @board.knight_moves(start, endpoint)
  end
end
