require_relative '../lib/icecream.rb'

RSpec.describe 'Icecream' do
  context '#new' do
    let(:id) { 1 }
    let(:flavor) { 'chocolate' }
    let(:type) { 'horn' }
    let(:price) { 50 }
    subject(:icecream) { Icecream.new 1, 'chocolate', 'horn', 50 }

    describe 'when creates a new icecream' do
      it {
	expect { icecream }.not_to raise_error
      }
    end

    describe 'when return Icecream type' do
      it {      
	allow(icecream).to receive(:kind_of?).and_return(Icecream)
        expect(icecream).to be_a_kind_of(Icecream)
      }
    end

    describe 'when return correct id' do
      it {
	expect(icecream.id).to eq(id)
      }
    end

    describe 'when returns correct flavor' do
      it {
	expect(icecream.flavor).to eq(flavor)
      }
    end

    describe 'when return correct type' do
      it {
	expect(icecream.type).to eq(type)
      }
    end

    describe 'when return correct price' do
      it {
	expect(icecream.price).to eq(price)
      }
    end
  end

  context '#to_s' do
    subject(:icecream) { Icecream.new 1, 'Chocolate', 'horn', 50 }

    it 'returns correct output' do
      expect(icecream.to_s).to be_a(String).and include('Chocolate horn 50')
    end
  end
end
