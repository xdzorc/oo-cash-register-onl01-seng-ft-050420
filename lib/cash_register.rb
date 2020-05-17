class CashRegister
  attr_accessor :total, :discount 
  
  def initialize(discount=0)
    @total =0
    @discount=discount
    @items=[]
  end
  
 def discount
   @discount
 end
  
  # def total
  #   @total 
  # end
  
   def add_item(title,price,quantity=1)
    
    @total +=  price*quantity
    quantity.times {@items << title}
   
  end
  
  def apply_discount
    @total =@total*(100-@discount)/100
    if !(@discount==0)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end
end
