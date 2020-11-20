class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
 
  def add_item(title, amount, quantity = 1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if discount != 0
    
    puts "After the discount, the total comes to #{}."
  else
    puts "There is no discount to apply."
    end
  end
  
end
