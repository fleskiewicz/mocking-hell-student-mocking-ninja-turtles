require_relative '../lib/someone.rb'

RSpec.describe 'Someone' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { 'Jan' }
    let(:lastname) { 'Kowalski' }
    subject(:someone) { Someone.new id, name, lastname }

    it 'creates a new someone' do
      expect { someone }.not_to raise_error
    end

    it 'returns Someone type' do
      allow(someone).to receive(:kind_of?).and_return(Someone)
      expect(someone).to be_a_kind_of(Someone)
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
    subject(:someone) { Someone.new 1, 'Jan', 'Kowalski' }

    it 'returns correct output' do
      expect(someone.to_s).to be_a(String).and include('Jan Kowalski')
    end
  end
end
