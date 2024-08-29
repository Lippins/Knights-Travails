# frozen_string_literal: true

# Handles visual information about the knights movement
module KnightHelpers
  KNIGHT_SYMBOL = '𐂃'
  CELL_WIDTH = 5 # Standard width for each cell to ensure alignment

  # Function to print the path breakdown
  def self.print_path_breakdown(path)
    puts "\nPath Breakdown:"
    path.each_cons(2) do |move|
      print "• [#{move[0].join(',')}] → "
    end
    puts "[#{path.last.join(',')}]"
    puts "\nThe knight starts at position #{path.first} and makes its way through the board following the numbers, eventually reaching #{path.last}."
  end

  # Function to print the visual representation of the knight's path on the board
  def self.print_board(path)
    board = Array.new(8) { Array.new(8, ' ' * CELL_WIDTH) } # Initialize a blank 8x8 board with standard cell width

    # Mark the positions on the board with the move number and knight symbol
    path.each_with_index do |position, index|
      x, y = position
      board[x][y] = " #{index}#{KNIGHT_SYMBOL}".ljust(CELL_WIDTH) # Adjust each cell to have consistent width
    end

    # Display the board
    puts "\nKnight's Path:"
    header = (0..7).map { |i| i.to_s.center(CELL_WIDTH) }.join(' ') # Create the header with centered column numbers
    puts "    #{header}"  # Print the column indices with proper spacing
    puts '  ' + ('-' * (CELL_WIDTH * 8 + 9))
    board.each_with_index do |row, i|
      puts "#{i} |" + row.join('|') + '|'
      puts '  ' + ('-' * (CELL_WIDTH * 8 + 9))
    end
  end
end
