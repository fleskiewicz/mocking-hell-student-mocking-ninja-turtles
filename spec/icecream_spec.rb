require_relative '../lib/icecream.rb'

RSpec.describe 'Icecream' do
  context '#new' do
    let(:id) { 1 }
    let(:taste) { double('Taste', brand: 'Chocolate') }
    let(:type) { double('Type', type: 'horn') }
    let(:price) { double('Price', price: '50') }
    subject(:icecream) { Icecream.new id, taste, type, price }

    it 'creates a new icecream' do
      expect { icecream }.not_to raise_error
    end

    it 'returns Icecream type' do
      allow(icecream).to receive(:kind_of?).and_return(Icecream)
      expect(icecream).to be_a_kind_of(Icecream)
    end

    it 'returns correct id' do
      expect(icecream.id).to eq(id)
    end

    it 'returns correct taste' do
      expect(icecream.taste).to eq(taste)
    end

    it 'returns correct type' do
      expect(icecream.type).to eq(type)
    end

    it 'returns correct price' do
      expect(icecream.price).to eq(price)
    end
  end

  context '#to_s' do
    subject(:icecream) { Icecream.new 1, 'Chocolate', 'horn', '50' }

    it 'returns correct output' do
      expect(icecream.to_s).to be_a(String).and include('Chocolate horn 50')
    end
  end
end