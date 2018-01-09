require_relative '../lib/flavor.rb'

RSpec.describe 'Flavor' do
  context '#initialize' do
    let(:id) { 1 }
    let(:name) { 'strawberry' }
    let(:price) { 5 }
    subject(:flavor) { Flavor.new 1, 'strawberry', 5 }

    describe 'when create new flavor' do
      it {
        expect { Flavor.new id, name, price }.not_to raise_error
      }
    end

    describe 'when return Flavor type' do
      it {
        allow(flavor).to receive(:kind_of?).and_return(Flavor)
        expect(flavor).to be_a_kind_of(Flavor)
      }
    end

    describe 'when return flavor id' do
      it {
        expect(flavor.id).to eq(id)
      }
    end

    describe 'when return flavor name' do
      it {
        expect(flavor.name).to eq(name)
      }
    end

    describe 'when return flavor price' do
      it {
        expect(flavor.price).to eq(price)
      }
    end
  end

  context '#validate' do
    subject(:flavor) { Flavor.new 1, 'strawberry', 5 }

    describe 'when validate id' do
      it {
        expect(flavor.valid_id?).to eq(true)
      }
    end

    describe 'when validate name' do
      it {
        expect(flavor.valid_name?).to eq(true)
      }
    end

    describe 'when validate price' do
      it {
        expect(flavor.valid_price?).to eq(true)
      }
    end
  end

  context '#to_s' do
    subject(:flavor) { Flavor.new 1, 'strawberry', 5 }

    it 'returns correct output' do
      expect(flavor.to_s).to be_a(String).and include('strawberry 5')
    end
  end
end
