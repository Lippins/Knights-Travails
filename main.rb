# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/board'
require_relative 'lib/knight_helpers'

# Example usage
board = Board.new
path = board.knight_moves([0, 0], [7, 7])

# Use the KnightHelpers module to print the path breakdown and board
KnightHelpers.print_path_breakdown(path)
KnightHelpers.print_board(path)
