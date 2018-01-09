require 'spec_helper'

require_relative '../lib/icecream_controller.rb'

RSpec.describe IcecreamController do
  context 'without icecreams' do
    subject(:manager) { BookManager.new }

    describe '.icecream_count' do
      let(:expected_number) { 0 }

      it 'returns 0' do
        expect(manager.icecream_count).to eq(expected_number)
      end
end
  end
end
