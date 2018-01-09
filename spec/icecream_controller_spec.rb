equire_relative '../lib/icecream.rb'
require_relative '../lib/icecream_controller.rb'

RSpec.describe 'IcecreamController' do
  subject(:controller) { IcecreamController.new }

  context '#get_icecream' do
    describe 'when icecream found' do
      let(:id) { 1 }
      let(:target) { Icecream.new 1, 'Czekolada', 'rozek' ,1.50 }

      it {
        controller.add_icecream('Czekolada','rozek', 1.50)
        expect(controller.get_icecream(id).flavor).to eq(target.flavor)
      }
    end

    describe 'when icecream not found' do
      let(:id) { 1 }

      it {
        expect(controller.get_icecream(id)).to eq(nil)
      }

    end
  end

  context '#get_last_id' do
    describe 'when list is empty' do

      it {
        expect(controller.get_last_id).to eq(0)
      }
    end

    describe 'when list has one element' do

      it {
        controller.add_icecream('Czekolada','rozek', 1.50)

        expect(controller.get_last_id).to eq(1)
      }
    end
  end

  context '#add_flavor' do
      describe 'when data is correct' do

        it {
          flavor = 'Czekolada'
          type = 'rozek'
          price = 1.40
          expect { controller.add_icecream(flavor,type, price) }.not_to raise_error
        }
      end

      describe 'when data is incorrect' do

        it {
          flavor = 'Czekolada'
          type = 'rog pogardy'
          price = 'zzz'
          expect { controller.add_icecream(flavor,type, price) }.to raise_error(ArgumentError)
        }
      end

  end

  context '#update_icecream' do
    describe 'when icecream found' do

      it {
        controller.add_icecream('Czekolada','rozek', 1.50)
        id = 1
        new_flavor = 'Pistacja'
        new_type = 'galka'
        new_price = 1.50
        expect { controller.update_icecream(1, new_flavor, new_type, new_price) }.not_to raise_error
      }

    end

    describe 'when flavor not found' do

      it {
        id = 1
        new_name = 'Pistacja'
        new_price = 1.50
        expect { controller.update_flavor(1, new_name, new_price) }.to raise_error(NoMethodError)
      }
    end

  end

  context '#remove_flavor' do
    describe 'when flavor found' do

      it {
        controller.add_flavor('Czekolada', 1.50)
        expect { controller.remove_flavor(1) }.not_to raise_error
      }

    end

    describe 'when flavor not found' do

      it {
        expect { controller.remove_flavor(1) }.not_to raise_error
      }

    end
  end

end
