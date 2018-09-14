# frozen_string_literal: true

require_relative '../lib/bot_saves_princess2.rb'

describe BotSavesPrincess2 do
  let(:mario_x) { 1 }
  let(:mario_y) { 2 }
  let(:grid_matrix) { ['---', '-p-', '-m-'] }

  describe 'display_path' do
    subject { described_class.new.display_path(mario_x, mario_y, grid_matrix) }

    it { is_expected.to eq('UP') }

    context 'when left' do
      let(:mario_x) { 2 }
      let(:mario_y) { 1 }

      subject { described_class.new.display_path(mario_x, mario_y, grid_matrix) }

      it { is_expected.to eq('LEFT') }
    end

    context 'when right' do
      let(:mario_x) { 0 }
      let(:mario_y) { 1 }
      let(:grid_matrix) { ['---', 'm-p', '---'] }

      subject { described_class.new.display_path(mario_x, mario_y, grid_matrix) }

      it { is_expected.to eq('RIGHT') }
    end

    context 'when down' do
      let(:mario_x) { 2 }
      let(:mario_y) { 0 }
      let(:grid_matrix) { ['--m', '--p', '---'] }

      subject { described_class.new.display_path(mario_x, mario_y, grid_matrix) }

      it { is_expected.to eq('DOWN') }
    end
  end

  describe 'get_princess_pos' do
    subject { described_class.new.get_princess_pos(grid_matrix) }

    it { is_expected.to eq([1, 1]) }
  end
end
