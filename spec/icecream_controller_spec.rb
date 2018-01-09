require 'spec_helper'

RSpec.describe IcecreamController do
  context 'without icecreams' do
    subject(:manager) { IcecreamController.new }

    describe '.icecream_count' do
      let(:expected_number) { 0 }

      it 'returns 0' do
        expect(manager.icecream_count).to eq(expected_number)
      end
    end

    

    describe '.get_icecream' do
      let(:target) { icecreams[1] }
      let(:id) { target.id }

      it 'returns correct icecream' do
        expect(manager.get_icecream(id)).to eq(target)
      end
    end
  end
end

