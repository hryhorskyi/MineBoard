# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Board, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        width: 10,
        height: 10,
        mines: 5
      )
      expect(board).to be_valid
    end

    it 'is not valid without a name' do
      board = Board.new(
        owners_email: 'example@example.com',
        width: 10,
        height: 10,
        mines: 5
      )
      expect(board).not_to be_valid
      expect(board.errors[:name]).to include("can't be blank")
    end

    it 'is not valid with an invalid email format' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'invalid-email',
        width: 10,
        height: 10,
        mines: 5
      )
      expect(board).not_to be_valid
      expect(board.errors[:owners_email]).to include('is invalid')
    end

    it 'is not valid without width' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        height: 10,
        mines: 5
      )
      expect(board).not_to be_valid
      expect(board.errors[:width]).to include("can't be blank")
    end

    it 'is not valid without height' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        width: 10,
        mines: 5
      )
      expect(board).not_to be_valid
      expect(board.errors[:height]).to include("can't be blank")
    end

    it 'is not valid without mines' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        width: 10,
        height: 10
      )
      expect(board).not_to be_valid
      expect(board.errors[:mines]).to include("can't be blank")
    end

    it 'is not valid with negative mines' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        width: 10,
        height: 10,
        mines: -5
      )
      expect(board).not_to be_valid
      expect(board.errors[:mines]).to include('must be greater than or equal to 0')
    end
  end

  context 'generate_minesweeper_board' do
    it 'generates a valid minesweeper board' do
      board = Board.new(
        name: 'Example Board',
        owners_email: 'example@example.com',
        width: 10,
        height: 10,
        mines: 5
      )
      board.generate_minesweeper_board
      expect(board.minesweeper_board).not_to be_empty
      expect(board.minesweeper_board.length).to eq(10)
      expect(board.minesweeper_board.first.length).to eq(10)
    end
  end
end
