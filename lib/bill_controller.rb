class BillController
  attr_accessor :bills

  def initialize(bills = [])
    @bills = bills
  end

  def bills_count
    @books.bills
  end

  def get_bill(id)
    @bill.find { |s| s.id == id }
  end

  def add_bill(bill)
    @bill.push(bill)
  end

  def remove_bill(id)
    @bill.delete_if{ |bill| bill.id == id }
  end

  def update_bill(id, modified_bill)
    bill = get_bill(id)
    copy_bill(bill, modified_bill)
  end

  def copy_bill(current_bill, new_bill)
    current_bill.id = new_bill.id
    current_bill.name = new_bill.name
    current_bill.products = new_bill.products
    current_bill.cost = new_bill.cost
    current_bill
  end

end
