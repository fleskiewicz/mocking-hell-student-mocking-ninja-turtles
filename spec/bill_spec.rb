require_relative '../lib/bill.rb'

RSpec.describe 'Bill' do
  context '#initializew' do
    let(:id) { 1 }
    let(:name) { 'John' }
    let(:products) { 'cookie' }
    let(:cost) { 22 }
    subject(:bill) { Bill.new 1, 'John', 'cookie', 22 }

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
      }
    end

    describe 'when return correct bill cost' do
      it {
        expect(bill.cost).to eq(cost)
      }
    end
  end

  context '#to_s' do
    subject(:bill) { Bill.new 1, 'John', 'cookie', 22 }

    it 'returns correct bill output' do
      expect(bill.to_s).to be_a(String).and include('John 22')
    end
  end
end
