require 'pry'

class CashRegister

attr_accessor :total, :discount

  def initialize(discount=nil)

    @total = 0
     @discount = discount
     @item_array = []

  end

  def add_item(title,price,quantity=nil)

    @title = title
     @price = price
     @quantity = quantity


      if quantity
      @total += (price * quantity)

      # i = 0
      # while i < quantity do
      #      @item_array << title
      #      i = i + 1
      # end

    else
      @total += price
     @item_array << title
    end
  end



  def apply_discount

      if @discount
         @total = @total - @total * @discount / 100
         "After the discount, the total comes to $#{@total}."

      else
          "There is no discount to apply."
      end
    end

    def items

      i = 0

      while i < @quantity do
           @item_array << @title
           i = i + 1
      end
      @item_array

    end

    def void_last_transaction

      @total = @total - @price

    end

end
  woolworths = CashRegister.new
#  woolworths.add_item("tomato",1.70,3)
