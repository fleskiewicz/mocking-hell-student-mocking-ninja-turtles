require_relative '../lib/bill.rb'

RSpec.describe 'Bill' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { 'John' }
    let(:products) { 'cookie' }
    let(:cost) { 22 }
    subject(:bill) { Bill.new 1, 'John', 'cookie', 22 }

    it 'creates a new bill' do
      expect { bill }.not_to raise_error
    end

    it 'returns correct bill id' do
      expect(bill.id).to eq(id)
    end

    it 'returns correct customer name' do
      expect(bill.name).to eq(name)
    end

    it 'returns bill products' do
      expect(bill.products).to eq(products)
    end

    it 'returns correct bill cost' do
      expect(bill.cost).to eq(cost)
    end
  end

  context '#to_s' do
    subject(:bill) { Bill.new 1, 'John', 'cookie', 22 }

    it 'returns correct bill output' do
      expect(bill.to_s).to be_a(String).and include('John 22')
    end
  end
end
