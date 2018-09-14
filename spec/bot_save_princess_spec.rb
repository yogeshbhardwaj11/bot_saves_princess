# frozen_string_literal: true

require_relative '../lib/bot_saves_princess.rb'

describe BotSavesPrincess do
  let(:matrix_input) { ['---', '-m-', 'p--'] }
  let(:get_princess_xy_output) { [0, 2] }
  let(:get_mario_xy_output) { [1, 1] }
  let(:output_left_down) { %w[LEFT DOWN] }
  let(:output_left_up) { %w[LEFT UP] }
  let(:output_right_up) { %w[RIGHT UP] }
  let(:output_right_down) { %w[RIGHT DOWN] }

  describe 'display_path' do
    subject { described_class.new.display_path(matrix_input) }

    it { is_expected.to eq(output_left_down) }

    context 'when left up' do
      let(:matrix_input) { ['p--', '-m-', '---'] }
      subject { described_class.new.display_path(matrix_input) }

      it { is_expected.to eq(output_left_up) }
    end

    context 'when right up' do
      let(:matrix_input) { ['--p', '-m-', '---'] }
      subject { described_class.new.display_path(matrix_input) }

      it { is_expected.to eq(output_right_up) }
    end

    context 'when right down' do
      let(:matrix_input) { ['---', '-m-', '--p'] }
      subject { described_class.new.display_path(matrix_input) }

      it { is_expected.to eq(output_right_down) }
    end
  end

  describe 'get_princess_xy' do
    subject { described_class.new.get_princess_xy(matrix_input) }

    it { is_expected.to eq(get_princess_xy_output) }
  end

  describe 'get_mario_xy' do
    subject { described_class.new.get_mario_xy(matrix_input) }

    it { is_expected.to eq(get_mario_xy_output) }
  end
end
