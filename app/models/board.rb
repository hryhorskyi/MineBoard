# frozen_string_literal: true

class Board < ApplicationRecord
  validates :owners_email, presence: true
  validates :width, presence: true, numericality: { greater_than: 0 }
  validates :height, presence: true, numericality: { greater_than: 0 }
  validates :mines, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true

  before_create :generate_minesweeper_board

  serialize :minesweeper_board, Array

  def generate_minesweeper_board
    generator = MinesweeperBoardGenerator.new(self)
    self.minesweeper_board = generator.generate_board
  end
end
