# frozen_string_literal: true

# This bot will save the princess
class BotSavesPrincess
  attr_accessor :grid_matrix

  def initialize
    grid_size = gets.to_i
    @grid_matrix = Array.new(grid_size)
    0.upto(grid_size - 1).each { |i| @grid_matrix[i] = gets.strip }
  end

  def display_path(grid_matrix)
    output = []
    princess_x, princess_y = get_princess_xy(grid_matrix)
    mario_x, mario_y = get_mario_xy(grid_matrix)
    while mario_x > princess_x
      puts 'LEFT'
      output << 'LEFT'
      mario_x -= 1
    end
    while mario_x < princess_x
      puts 'RIGHT'
      output << 'RIGHT'
      mario_x += 1
    end
    while mario_y > princess_y
      puts 'UP'
      output << 'UP'
      mario_y -= 1
    end
    while mario_y < princess_y
      puts 'DOWN'
      output << 'DOWN'
      mario_y += 1
    end
    output
  end

  def get_princess_xy(grid_matrix)
    grid_row_with_princess = grid_matrix.detect do |grid_row|
      grid_row.include?('p')
    end
    princess_x = grid_row_with_princess.index('p')
    princess_y = grid_matrix.index(grid_row_with_princess)
    [princess_x, princess_y]
  end

  def get_mario_xy(grid_matrix)
    grid_row_with_mario = grid_matrix.detect do |grid_row|
      grid_row.include?('m')
    end
    mario_x = grid_row_with_mario.index('m')
    mario_y = grid_matrix.index(grid_row_with_mario)
    [mario_x, mario_y]
  end
end
