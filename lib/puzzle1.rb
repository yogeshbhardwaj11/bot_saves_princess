# frozen_string_literal: true

require_relative 'bot_saves_princess'

# Puzzle1 execution
class Puzzle1
  def initialize
    obj = BotSavesPrincess.new
    obj.display_path(obj.grid_matrix)
  end
end
Puzzle1.new
