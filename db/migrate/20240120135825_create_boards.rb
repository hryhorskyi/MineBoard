# frozen_string_literal: true

class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :owners_email
      t.integer :width
      t.integer :height
      t.integer :mines
      t.text :minesweeper_board

      t.timestamps
    end
  end
end
