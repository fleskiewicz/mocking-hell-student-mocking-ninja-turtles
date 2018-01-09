require_relative '../lib/flavor.rb'
require_relative '../lib/flavor_controller.rb'

RSpec.describe 'FlavorController' do
  subject(:controller) { FlavorController.new }

  context '#get_flavor' do
    describe 'when flavor found' do
      let(:id) { 1 }
      let(:target) { Flavor.new 1, 'Czekolada', 1.50 }

      it {
        controller.add_flavor('Czekolada', 1.50)
        expect(controller.get_flavor(id).name).to eq(target.name)
      }
    end

    describe 'when flavor not found' do
      let(:id) { 1 }

      it {
        expect(controller.get_flavor(id)).to eq(nil)
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
        controller.add_flavor('Czekolada', 1.50)

        expect(controller.get_last_id).to eq(1)
      }
    end
  end

  context '#add_flavor' do
      describe 'when data is correct' do

        it {
          name = 'Czekolada'
          price = 1.40
          expect { controller.add_flavor(name, price) }.not_to raise_error
        }
      end

      describe 'when data is incorrect' do

        it {
          name = 'Czekolada'
          price = 'zzz'
          expect { controller.add_flavor(name, price) }.to raise_error(ArgumentError)
        }
      end

  end

  context '#update_flavor' do
    describe 'when flavor found' do

      it {
        controller.add_flavor('Czekolada', 1.50)
        id = 1
        new_name = 'Pistacja'
        new_price = 1.50
        expect { controller.update_flavor(1, new_name, new_price) }.not_to raise_error
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
