require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :item_name, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
  end
  
  def add_item(item_name, price, quantity = 1)
    #will add item_name to @items based on its value of quantity
      quantity.times do 
        @items << item_name
    end

    @item_name = item_name
    @price = price
    @total += price*quantity
    @last_transaction = @total
    @last_transaction
  end
  
  def apply_discount
    if discount > 0
      @discounted = (price * discount)/100
      @total -= @discounted
      return "After the discount, the total comes to $#{total}." 
    else "There is no discount to apply."
    end
  end
  
  def void_last_transaction
  binding.pry

  @total -= @price
  @total -= @last_transaction
  end
  
end
