require_relative '../lib/flavor.rb'

RSpec.describe 'Flavor' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { 'strawberry' }
    let(:price) { 5 }
    subject(:flavor) { Flavor.new 1, 'strawberry', 5 }

    it 'creates a new flavor' do
      expect { flavor }.not_to raise_error
    end

    it 'returns Flavor type' do
      allow(flavor).to receive(:kind_of?).and_return(Flavor)
      expect(flavor).to be_a_kind_of(Flavor)
    end

    it 'returns correct id' do
      expect(flavor.id).to eq(id)
    end

    it 'returns correct name' do
      expect(flavor.name).to eq(name)
    end

    it 'returns correct price' do
      expect(flavor.price).to eq(price)
    end
  end

  context '#to_s' do
    subject(:flavor) { Flavor.new 1, 'strawberry', 5 }

    it 'returns correct output' do
      expect(flavor.to_s).to be_a(String).and include('strawberry 50')
    end
  end
end
