# frozen_string_literal: true

json.extract! board, :id, :name, :owners_email, :width, :height, :mines, :minesweeper_board, :created_at, :created_at,
              :updated_at
json.url board_url(board, format: :json)
