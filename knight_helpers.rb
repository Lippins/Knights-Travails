# frozen_string_literal: true

# Handles visual information about the knights movement
module KnightHelpers
  # Function to print the path breakdown
  def self.print_path_breakdown(path)
    puts "\nPath Breakdown:"
    path.each_cons(2) do |move|
      print "• [#{move[0].join(',')}] → "
    end
    puts "[#{path.last.join(',')}]"
    puts "\nThe knight starts at position #{path.first}\nand makes its way through the board following the numbers,\neventually reaching #{path.last}."
  end

  # Function to print the visual representation of the knight's path on the board
  def self.print_board(path)
    board = Array.new(8) { Array.new(8, ' . ') } # Initialize a blank 8x8 board

    # Mark the positions on the board with the move number
    path.each_with_index do |position, index|
      x, y = position
      board[x][y] = " #{index} " # Mark each move with its step number
    end

    # Display the board
    puts "\nKnight's Path:"
    puts '   ' + (0..7).to_a.join('   ')  # Print the column indices
    puts '  ' + ('-' * 33)
    board.each_with_index do |row, i|
      puts "#{i} |" + row.join('|') + '|'
      puts '  ' + ('-' * 33)
    end
  end
end
