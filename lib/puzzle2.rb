# frozen_string_literal: true

require_relative 'bot_saves_princess2'

# This bot will save the princess
class Puzzle2
  def initialize
    ob = BotSavesPrincess2.new
    ob.display_path(ob.mario_x, ob.mario_y, ob.grid_matrix)
  end
end
Puzzle2.new
