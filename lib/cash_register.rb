class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount=0)
    total = 0
    items = []
    @total = total
    @discount = discount
    @items = items
  end

  def add_item(title, price, quantity=1)
    @total = @total + (price*quantity)
    @price = price
    @quantity = quantity
    quantity.times do |x|
      @items << title
    end
  end

  def apply_discount
    @total = @total*(100-@discount)/100
    if discount == 0
      "There is no discount to apply."
    else
    "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - (@price*@quantity)

  end
end

# To call an instance method inside another instance method,
# we use the self keyword to refer to the instance on which
# we are operating

bob = CashRegister.new(20)
puts bob.total
