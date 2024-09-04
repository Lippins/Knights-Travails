# frozen_string_literal: true

require_relative 'node'

# Represents the chessboard and handles the BFS search for the knight’s path.
class Board
  # size: The size of the board, typically 8 for an 8x8 chessboard.
  # visited: A 2D array to keep track of visited nodes.
  attr_accessor :size, :visited

  def initialize(size = 8)
    @size = size
    @visited = Array.new(size) { Array.new(size, false) }
  end

  def knight_moves(start, endpoint)
    start_node = Node.new(start)
    queue = [start_node]
    mark_visited(start_node.position)

    until queue.empty?
      current_node = queue.shift

      return get_route(current_node) if current_node.position == endpoint

      queue_valid_moves(current_node, queue)
    end
  end

  private

  def queue_valid_moves(node, queue)
    node.valid_moves.each do |move|
      x, y = move
      unless @visited[x][y]
        mark_visited(move)
        queue << Node.new(move, node)
      end
    end
  end

  def mark_visited(position)
    x, y = position
    @visited[x][y] = true
  end

  def get_route(node)
    route = []
    while node
      route << node.position
      node = node.parent
    end
    route.reverse
  end
end
