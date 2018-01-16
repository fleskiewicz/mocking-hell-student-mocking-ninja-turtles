require_relative '../lib/bill.rb'

RSpec.describe 'Bill' do
  context '#initialize' do
    let(:id) { 1 }
    let(:name) { 'John' }
    let(:flavor1) { double('Flavor', id: 1, name: 'Czekoladowe', price: 22) }
    let(:flavor2) { double('Flavor', id: 2, name: 'Pistacjowe', price: 10) }
    let(:products) { [flavor1, flavor2] }
    subject(:bill) { Bill.new 1, 'John', products }

    describe 'when creates a new bill' do
      it {
        expect { bill }.not_to raise_error
      }
    end

    describe 'when return correct bill id' do
      it {
	       expect(bill.id).to eq(id)
      }
    end

    describe 'when return correct customer name' do
      it {
	       expect(bill.name).to eq(name)
      }
    end

    describe 'when return bill products' do
      it {
        expect(bill.products).to eq(products)
        allow(products).to receive(:kind_of?).and_return(products)
        expect(bill.products).to be_a_kind_of(products)
        expect(bill.products.to_s).to be_a(String).and include(products.to_s)
      }
    end

  end

  context '#validate' do
    let(:flavor1) { double('Flavor', id: 1, name: 'Czekoladowe', price: 22) }
    let(:flavor2) { double('Flavor', id: 2, name: 'Pistacjowe', price: 10) }
    let(:products) { [flavor1, flavor2] }
    subject(:bill) { Bill.new 1, 'John', products }

    describe 'when validate id' do
      it {
        expect(bill.valid_id?).to eq(true)
      }
    end

    describe 'when validate name' do
      it {
        expect(bill.valid_name?).to eq(true)
      }
    end

    describe 'when validate products' do
      it {
        expect(bill.valid_products?).to eq(true)
      }
    end

  end

  context '#to_s' do
    let(:products) { double('Flavor', id: 1, name: 'Czekoladowe', price: 22) }
    subject(:bill) { Bill.new 1, 'John', products }

    it 'returns correct bill output' do
      expect(bill.to_s).to be_a(String).and include('John')
    end
  end
end
