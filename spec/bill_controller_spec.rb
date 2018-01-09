require_relative '../lib/bill.rb'
require_relative '../lib/bill_controller.rb'

RSpec.describe 'BillController' do
  subject(:controller) { BillController.new }

  context '#get_bill' do
    describe 'when bill found' do
      let(:id) { 1 }
      let(:target) { Bill.new 1, 'John', 'Cookie', 2 }

      it {
        controller.add_bill(target)
        expect(controller.get_bill(id).name).to eq(target.name)
      }
    end

    describe 'when bill not found' do
      let(:id) { 1 }

      it {
        expect(controller.get_bill(id)).to eq(nil)
      }
    end
  end

  context '#add_bill' do
    describe 'when data is correct' do
      let(:target) { Bill.new 1, 'John', 'Cookie', 2 }

      it {
        expect { controller.add_bill(target) }.not_to raise_error
      }
    end

    describe 'when data is incorrect' do
      let(:target) { Bill.new 1, 'John', 'Cookie', 'dd' }

      it {
        expect { controller.add_bill(target) }.to raise_error(ArgumentError)
      }
    end
  end

  context '#update_bill' do
    describe 'when bill found' do
      let(:target) { Bill.new 1, 'John', 'Cookie', 2 }
      let(:modified) { Bill.new 1, 'Andrew', 'Strawberry', 5 }

      it {
        controller.add_bill(target)
        expect { controller.update_bill(1, modified) }.not_to raise_error
      }
    end

    describe 'when bill not found' do
      let(:modified) { Bill.new 1, 'Andrew', 'Strawberry', 5 }

      it {
        expect { controller.update_bill(1, modified) }.to raise_error(NoMethodError)
      }
    end
  end

  context '#remove_bill' do
    describe 'when bill found' do
      let(:target) { Bill.new 1, 'John', 'Cookie', 2 }

      it {
        controller.add_bill(target)
        expect { controller.remove_bill(1) }.not_to raise_error
      }
    end

    describe 'when bill not found' do
      it {
        expect { controller.remove_bill(1) }.not_to raise_error
      }
    end
  end

  context '#copy_bill' do
    describe 'when bill found' do
      let(:target) { Bill.new 1, 'John', 'Cookie', 2 }
      let(:new_one) { Bill.new 2, 'Adam', 'Vanilia', 3 }

      it {
        expect { controller.copy_bill(target, new_one) }.not_to raise_error
      }
    end

    describe 'when bill not found' do
      let(:new_one) { Bill.new 2, 'Adam', 'Vanilia', 3 }
      it {
        expect { controller.copy_bill(target, new_one) }.to raise_error(NameError)
      }
    end
  end
end
