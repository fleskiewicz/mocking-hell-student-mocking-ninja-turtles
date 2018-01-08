require_relative '../lib/person.rb'

RSpec.describe 'Person' do
  context '#new' do
    let(:id) { 1 }
    let(:name) { 'Jan' }
    let(:lastname) { 'Kowalski' }
    let(:phone) { '123456789' }
    subject(:person) { Person.new id, name, lastname, phone }

    it 'creates a new person' do
      expect { person }.not_to raise_error
    end

    it 'returns Person type' do
      allow(person).to receive(:kind_of?).and_return(Person)
      expect(person).to be_a_kind_of(Person)
    end

    it 'returns correct id' do
      expect(person.id).to eq(id)
    end

    it 'returns correct name' do
      expect(person.name).to eq(name)
    end

    it 'returns correct lastname' do
      expect(person.lastname).to eq(lastname)
    end

    it 'returns correct phone' do
      expect(person.phone).to eq(phone)
    end
  end

  context '#to_s' do
    subject(:person) { Person.new 1, 'Jan', 'Kowalski', '123456789' }

    it 'returns correct output' do
      expect(person.to_s).to be_a(String).and include('Jan Kowalski 123456789')
    end
  end
end