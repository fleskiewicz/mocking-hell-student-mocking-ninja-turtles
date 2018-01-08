require_relative '../lib/someone.rb'

RSpec.describe 'someone' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { 'Kamil' }
    let(:lastname) { 'Kowalski' }    
    subject(:person) { Person.new id, name, lastname }

    it 'creates a new someone' do
      expect { someone }.not_to raise_error
    end

    it 'returns Person type' do
      allow(someone).to receive(:kind_of?).and_return(someone)
      expect(someone).to be_a_kind_of(someone)
    end

    it 'returns correct id' do
      expect(someone.id).to eq(id)
    end

    it 'returns correct name' do
      expect(someone.name).to eq(name)
    end

    it 'returns correct lastname' do
      expect(someone.lastname).to eq(lastname)
    end

  
  end

  context '#to_s' do
    subject(:someone) { someone.new 1, 'Kamil', 'Kowalski'}

    it 'returns correct output' do
      expect(someone.to_s).to be_a(String).and include('Kamil Kowalski')
    end
  end
end
