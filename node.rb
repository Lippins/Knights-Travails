# frozen_string_literal: true

# Represents each square on the board
class Node
  # position: An array representing the coordinates of the square (e.g., [x, y]).
  # parent: A reference to the previous node in the path, useful for backtracking and reconstructing the path.
  attr_accessor :position, :parent

  def initialize(position, parent = nil)
    @position = position
    @parent = parent
  end

  def moves
    # Returns all possible knight moves from a node
    x, y = @position
    [
      [x + 2, y + 1], [x + 2, y - 1], [x - 2, y + 1], [x - 2, y - 1],
      [x + 1, y + 2], [x - 1, y + 2], [x + 1, y - 2], [y - 2, x - 2]
    ]
  end

  def valid_moves
    # Returns all valid moves for the knight from this node’s position.
    moves.select { |move_x, move_y| move_x.between?(0, 7) && move_y.between?(0, 7) }
  end
end
