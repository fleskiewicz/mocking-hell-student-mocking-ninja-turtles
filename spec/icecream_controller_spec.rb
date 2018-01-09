require 'spec_helper'

RSpec.describe icecream_controller do
  context 'without icecreams' do
    subject(:controller) { icecream_controller.new }

    describe '.icecream_count' do
      let(:expected_number) { 0 }

      it 'returns 0' do
        expect(controller.icecream_count).to eq(expected_number)
      end
end

describe '.remove_icecream' do
      let!(:expected_number) { controller.icecream_count - 1 }
      let(:id) { 1 }

      it 'removes certain icecream' do
        icecream = manager.remove_icecream(id)
        expect(controller.icecreamcount).to eq(expected_number)
        expect(controller.icecreams).not_to include(icecream)
      end
end
 
end
end
