require 'spec_helper'

RSpec.describe icecream_controller do
  context 'without icecreams' do
    subject(:controller) { icecream_controller.new }

describe '.remove_icecream' do
      let(:id) { 1 }

      it 'removes certain icecream' do
        icecream = manager.remove_icecream(id)
        expect(controller.icecreamcount).to eq(expected_number)
        expect(controller.icecreams).not_to include(icecream)
      end
end
 
end
end
