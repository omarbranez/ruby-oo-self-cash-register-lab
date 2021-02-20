#require 'pry'
class CashRegister 
    attr_accessor :total, :discount, :items, :last_transaction

        
    def initialize(discount = 0)
        @discount = discount        
        @total = 0
        @items = []
        @last_transaction = last_transaction
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if self.discount != 0
            self.total = (total * ((100 - discount.to_f) / 100))
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
        # if self.discount = 0
        #     return "There is no discount to apply."
        # else
        #     self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        #     return "After the discount, the total comes to #{self.total}."
        # end
    end

    def void_last_transaction
        if self.items.empty?
            self.total = 0.0
        else
            self.total = self.total - self.last_transaction
        end
    end
            

end
