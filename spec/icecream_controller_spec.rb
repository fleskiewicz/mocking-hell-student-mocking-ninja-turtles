require_relative '../lib/icecream.rb'
require_relative '../lib/icecream_controller.rb'

RSpec.describe 'IcecreamController' do
  subject(:controller) { IcecreamController.new }

  context '#get_icecream' do
    describe 'when icecream found' do
      let(:id) { 1 }
      let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 1.50 }

      it {
        controller.add_icecream(target)
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
      let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 1.50 }

      it {
        controller.add_icecream(target)

        expect(controller.get_last_id).to eq(1)
      }
    end
  end

  context '#add_icecream' do
      describe 'when data is correct' do
        let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 1.50 }

        it {
          expect { controller.add_icecream(target) }.not_to raise_error
        }
      end

      describe 'when data is incorrect' do
        let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 'zzz' }

        it {
          expect { controller.add_icecream(target) }.to raise_error(ArgumentError)
        }
      end

  end

  context '#update_icecream' do
    describe 'when icecream found' do
      let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 10 }
      let(:modified) { Icecream.new 1, 'Pistacja', 'kubek' , 20 }

      it {
        controller.add_icecream(target)
        expect { controller.update_icecream(1, modified) }.not_to raise_error
      }

    end

    describe 'when icecream not found' do
      let(:modified) { Icecream.new 1, 'Pistacja', 'kubek' , 20 }

      it {
        expect { controller.update_icecream(1, modified) }.to raise_error(NoMethodError)
      }
    end

  end

  context '#remove_icecream' do
    describe 'when icecream found' do
      let(:target) { Icecream.new 1, 'Czekolada', 'rozek' , 10 }

      it {
        controller.add_icecream(target)
        expect { controller.remove_icecream(1) }.not_to raise_error
      }

    end

    describe 'when icecream not found' do

      it {
        expect { controller.remove_icecream(1) }.not_to raise_error
      }

    end
  end

end
