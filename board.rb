# frozen_string_literal: true

# Defines board characters and grid structure
class Board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end
end
