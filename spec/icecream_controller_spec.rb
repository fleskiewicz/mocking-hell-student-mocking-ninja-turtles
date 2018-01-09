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

    describe '.add_icecream' do
      let(:icecream) { icecreamFactory.create_single_icecream }
      let(:expected_number) { 1 }

      it 'adds new icecream to the storage' do
        manager.add_icecream(icecream)
        expect(manager.icecream_count).to eq(expected_number)
        expect(manager.get_icecream(icecream.id)).to eq(icecream)
      end
    end
  end

  context 'with some icecreams' do
    subject(:manager) { IcecreamController.new icecreams }

    describe '.icecream_count' do
      let(:expected_number) { icecreams.count }

      it 'returns correct number of icecreams' do
        expect(manager.icecream_count).to eq(expected_number)
      end
    end

    describe '.remove_icecream' do
      let!(:expected_number) { manager.icecream_count - 1 }
      let(:id) { 1 }

      it 'removes certain icecream' do
        icecream = manager.remove_icecream(id)
        expect(manager.icecream_count).to eq(expected_number)
        expect(manager.icecreams).not_to include(icecream)
      end
    end

    describe '.update_icecream' do
      let(:updated_icecream) { icecreamFactory.create_single_icecream }
      let(:id) { 2 }

      it 'updates certain icecream' do
        expect(manager).to receive(:get_icecream).and_return(icecreams[1], icecreams[1])
        manager.update_icecream(id, updated_icecream)
        expect(manager.get_icecream(id).title).to eq(updated_icecream.title)
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

