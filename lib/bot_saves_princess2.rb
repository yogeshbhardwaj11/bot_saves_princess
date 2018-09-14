# frozen_string_literal: true

# This bot will save the princess
class BotSavesPrincess2
  attr_accessor :grid_matrix, :mario_x, :mario_y

  def initialize
    grid_size = gets.to_i
    mario_pos = gets.split(' ').map(&:to_i)
    @mario_x = mario_pos.last
    @mario_y = mario_pos.first
    @grid_matrix = Array.new(grid_size)
    0.upto(grid_size - 1).each { |i| @grid_matrix[i] = gets.strip }
  end

  def display_path(mario_x, mario_y, grid_matrix)
    princess_pos = get_princess_pos(grid_matrix)
    if mario_x > princess_pos[0] then puts 'LEFT'; 'LEFT'
    elsif mario_x < princess_pos[0] then puts 'RIGHT'; 'RIGHT'
    elsif mario_y > princess_pos[1] then puts 'UP'; 'UP'
    elsif mario_y < princess_pos[1] then puts 'DOWN'; 'DOWN'
    end
  end

  def get_princess_pos(grid_matrix)
    princess_row = grid_matrix.detect { |grid_row| grid_row.include?('p') }
    princess_pos = [princess_row.index('p'), grid_matrix.index(princess_row)]
    princess_pos
  end
end
# ob = BotSavesPrincess2.new
# ob.display_path(ob.mario_x, ob.mario_y, ob.grid_matrix)
