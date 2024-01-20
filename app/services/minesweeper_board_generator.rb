# frozen_string_literal: true

class MinesweeperBoardGenerator
  def initialize(board)
    @board = board
  end

  def generate_board
    width = @board.width
    height = @board.height
    num_mines = @board.mines

    # Create an empty board filled with zeros
    board = Array.new(height) { Array.new(width, 0) }

    # Generate random mine positions without duplicates
    mine_positions = generate_mine_positions(width, height, num_mines)

    # Place mines on the board
    mine_positions.each do |x, y|
      board[y][x] = 'M' # 'M' represents a mine
    end

    board
  end

  private

  def generate_mine_positions(width, height, num_mines)
    mine_positions = Set.new

    while mine_positions.length < num_mines
      x = rand(width)
      y = rand(height)
      mine_positions.add([x, y])
    end

    mine_positions.to_a
  end
end
